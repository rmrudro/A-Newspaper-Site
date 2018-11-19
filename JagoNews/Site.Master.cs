using System;
using System.Collections.Generic;
using System.Security.Claims;
using System.Security.Principal;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using System.Net;
using System.Web.Script.Serialization;
using Newtonsoft.Json;
using System.Text;
using System.Web.UI.HtmlControls;
using System.Drawing;

namespace JagoNews
{
    public partial class SiteMaster : MasterPage
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            lblMobileNo.ForeColor = Color.White;
            //lblMobileNo.Font.Bold = true;
            lblMSISDN.ForeColor= Color.White;
            //lblMSISDN.Font.Bold = true;
            lblHandset.ForeColor = Color.White;
            //lblHandset.Font.Bold = true;
            lblHandsetNo.ForeColor = Color.White;
            //lblHandsetNo.Font.Bold = true;
            if (!IsPostBack)
            {
                //getMSISDN();
                if (Session[KeyConstant.Session_msisdn] == null || Session[KeyConstant.Session_msisdn].ToString() == "na")
                {
                    getMSISDN();
                }
                lblMSISDN.Text = Session[KeyConstant.Session_msisdn].ToString();
                GetAllMenuCategory();
                
            }
            if (Session[KeyConstant.Session_msisdn].ToString() != "na")
            {
                SubscriptionCheck();
            }
            else
            {
                SubscriptionCheck();
                btnUnsubscribe.Visible = false;
                btnUnsubscribe1.Visible = false;
                // btnprofile.Visible = false;
                btnSubscribe.Visible = false;
                btnsubscribe1.Visible = false;
                // lblServiceInformation.Text = "Please use Mobile Internet to use this service. Thank You.";

                // divDownloadCount.Visible = false;
            }

        }
        private void GetAllMenuCategory()
        {
            using (WebClient wc = new WebClient() { Encoding = Encoding.UTF8 })
            {

                var ParsedObj = wc.DownloadString("https://www.jagonews24.com/api/v2/all-category?key=N3w7e2343W4s963jA2o34P");
                List<CatagoryModel> allcategory = new List<CatagoryModel>();
                allcategory = JsonConvert.DeserializeObject<List<CatagoryModel>>(ParsedObj);

                rptTopCategory.DataSource = allcategory.GetRange(0, 9);

                rptTopCategory.DataBind();
                //HtmlGenericControl aTag = new HtmlGenericControl("li a");

                //aTag.InnerHtml = "আর্কাইভ";
                //aTag.Attributes.Add("href", "archive.aspx");
                //rptTopCategory.Controls.Add(aTag);
            }
        }
        public void getMSISDN()
        {
            var headers = String.Empty;
            foreach (var key in Request.Headers.AllKeys)
                headers += key + "=" + Request.Headers[key] + "@@";

            headers = headers.Replace('=', '~');
            ProfileModel objprofilemodel;
            using (WebClient wc = new WebClient())
            {
                var ParsedObj = wc.DownloadString("http://crux.bongobd.com/api/UserProfileTrack/GetUserFullProfile?http_header=" + headers);
                objprofilemodel = new JavaScriptSerializer().Deserialize<ProfileModel>(ParsedObj);

                string version = objprofilemodel.version;
                string reply = objprofilemodel.reply;
                //I need to check here

                string msisdn = objprofilemodel.msisdn;

                lblHandset.Text = objprofilemodel.handsetModel;
                if (msisdn == null)
                {
                    // Session[ServiceInformation_Generic.Session_wapid] = "1";
                    
                    lblMSISDN.Text = "na";//change here I done in 7/3/2017
                    Session[KeyConstant.Session_msisdn] = lblMSISDN.Text.ToString();
                    Session[KeyConstant.Session_Content_Access] = "0";
                    //change here I done in 7/3/2017
                    // WapCategorySet(1);
                }
                else
                {
                    Session[KeyConstant.Session_msisdn] = msisdn;
                    //lblMSISDN.Text = Session[KeyConstant.Session_msisdn].ToString();
                    //Session[KeyConstant.Session_msisdn] = lblMSISDN.Text.ToString();

                    GetMSISDN.msisdn = msisdn;

                    string MSISDN_Prefix = GetMSISDN.msisdn.Substring(0, 5);
                    if (MSISDN_Prefix != "88018")
                    {
                        
                        Session[KeyConstant.Session_Content_Access] = "2";
                    }
                    else
                    {
                        btnprofile.Visible = true;
                        psubinfocharge.Visible = true;
                        Session[KeyConstant.Session_Content_Access] = "1";
                    }
                }
            }
            AccessLogInsert(objprofilemodel.userAgent);

        }

        #region AccessLogInsert
        private void AccessLogInsert(string UserAgent)
        {
            Session[KeyConstant.Session_UserAgent] = UserAgent;
            string SearchName = string.Empty;
            string strHostName = HttpContext.Current.Request.UserHostAddress.ToString();
            string IPAddress = System.Net.Dns.GetHostAddresses(strHostName).GetValue(0).ToString();
            string redirUrl = HttpContext.Current.Request.UrlReferrer == null ? "Localhost" : HttpContext.Current.Request.UrlReferrer.Host.ToString();
            string currentUrl = HttpUtility.UrlEncode(HttpContext.Current.Request.Url.AbsoluteUri);


            using (WebClient wc = new WebClient())
            {
                string msisdn = String.Empty;
                if (Session[KeyConstant.Session_msisdn] == null)
                    msisdn = "na";
                else
                    msisdn = Session[KeyConstant.Session_msisdn].ToString();

                string localPageId = Session[KeyConstant.PageId].ToString();

                string apiurl = "http://crux.bongobd.com/api/History/accessLogInsert?url=" + currentUrl + "&portal=RobiJago&MSISDN=" + msisdn + "&HS_OS=" + GetHandset.Handset_OS + "&HS_Mfg=" + GetHandset.Handset_Manufacturer + "&HS_Model=" + GetHandset.Handset_Model + "&HS_dim=" + GetHandset.Handset_Dimension + "&apn=arefin&campID=01610400004&IPAddress=" + IPAddress + "&redirUrl=" + redirUrl + "&PageID=" + localPageId + "&UserAgent=" + UserAgent;
                var NewParsedObj = wc.DownloadString(apiurl);
            }
        }
        #endregion

        public void SubscriptionCheck()
        {

            if (Session[KeyConstant.Session_msisdn].ToString() == "na")
            {
                btnUnsubscribe.Visible = false;
                btnUnsubscribe1.Visible = false;
                // btnprofile.Visible = false;
                btnSubscribe.Visible = false;
                btnsubscribe1.Visible = false;
                // lblServiceInformation.Text = "Please use Mobile Internet to use this service. Thank You.";
                Session[KeyConstant.Session_subscribed] = "0";
                psubinfo.Visible = true;
                psubinfo.InnerText = "You are not using mobile internet please turn on mobile internet";
                // divDownloadCount.Visible = false;
            }
            else
            {
                using (WebClient wc = new WebClient())
                {
                    var NewParsedObj = wc.DownloadString("http://crux.bongobd.com/api/SubscriptionCheck/CheckSubscription?msisdn=" + Session[KeyConstant.Session_msisdn].ToString() + "&keyword=Jago");
                    SubscriptionModel objsubscription = new JavaScriptSerializer().Deserialize<SubscriptionModel>(NewParsedObj);

                    string version_1 = objsubscription.version;
                    string reply_1 = objsubscription.reply;

                    var contentData = objsubscription;
                    var SubscriberKeyword = objsubscription.keyword;

                    if (objsubscription.reply == "subscribed")
                    {
                        // lblSubcriptionInfo.Text = "You are subscribed to Bongo WAP Service";
                        btnUnsubscribe.Visible = true;
                        btnUnsubscribe1.Visible = true;
                        psubinfo.Visible = true;
                      //  psubinfo.InnerText = "To unsubscribe click unsubscribe button";
                        Session[KeyConstant.Session_subscribed] = "1";
                        Session[KeyConstant.Session_subscribtionKeyword] = objsubscription.keyword;
                    }
                    else
                    {
                        //  lblSubcriptionInfo.Text = "You are not subscribed to this Service";
                        btnSubscribe.Visible = true;
                        btnsubscribe1.Visible = true;
                        btnUnsubscribe.Visible = false;
                        btnUnsubscribe1.Visible = false;
                        psubinfo.Visible = true;
                        Session[KeyConstant.Session_subscribed] = "0";
                        //  divDownloadCount.Visible = false;
                    }
                }

            }

        }

        protected void btnUnsubscribe_Click(object sender, EventArgs e)
        {
            Response.Redirect("unsubscription.aspx");
        }

        protected void btnSubscribe_Click(object sender, EventArgs e)
        {
            Response.Redirect("subscription.aspx");
        }

        protected void btnsearch_ServerClick1(object sender, EventArgs e)
        {

        }

        protected void btnprofile_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profile.aspx");
        }
    }

}