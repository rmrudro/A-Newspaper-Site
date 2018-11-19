using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace JagoNews
{
    public partial class mobileInternet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session[KeyConstant.PageId] = "132";
            if (Session[KeyConstant.Session_Content_Access].ToString() == "2")
            {
                lblText.Text = "You are not using Robi number please use Robi number";
            }
            else if(Session[KeyConstant.Session_Content_Access].ToString() == "0")
            {
                lblText.Text = "You are not using mobile internet please turn on mobile internet or Provide your Robi mobile number below";
            }
            HtmlGenericControl divServiceInformation = (HtmlGenericControl)Master.FindControl("divServiceInformation");
            divServiceInformation.Visible = false;
            HtmlGenericControl divsubheader = (HtmlGenericControl)Page.Master.FindControl("divsubheader");
            divsubheader.Visible = false;
        }

        protected void btnback_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }
        protected void Login_Click(object sender, EventArgs e)
        {
            WebClient client = new WebClient();
            string msisdn = msisdnTextBox.Text;
            msisdn = "88018" + msisdn;
            //if (msisdn.StartsWith("88018"))
            //{
                Session["Login_msisdn"] = msisdn;
                var Codeurl = KeyConstant.BaseAddress + "Wifi/GetWifiCode?msisdn=" + msisdn;
                var Data = client.DownloadString(Codeurl);
                Code code = new JavaScriptSerializer().Deserialize<Code>(Data);
                string WifiCode = code.wifiCode + " is your Jago News verification code";

                var SendsmsUrl = KeyConstant.BaseAddress + "SMS/SendFreeSMS?msisdn=" + msisdn + "&sms=" + WifiCode + "&sc=16443";
                var smsData = client.DownloadString(SendsmsUrl);
                divVerifycode.Visible = true;
                divLogin.Visible = false;
            //}
            //else
            //{
            //    divLogin.Visible = true;
            //    lblInvalidCode.Text = "Please use your Robi Number";
                //Response.Redirect("~/mobileInternet.aspx");

            //}

        }

        protected void verifyCode_Click(object sender, EventArgs e)
        {
            WebClient client = new WebClient();
            string pin = verifyCodeTextBox.Text;
            string msisdn = Session["Login_msisdn"].ToString();
            var WifiCodeUrl = KeyConstant.BaseAddress + "Wifi/VerifyWifiCode?msisdn=" + msisdn + "&wificode=" + pin;
            var smsData = client.DownloadString(WifiCodeUrl);
            Code VerificationCode = new JavaScriptSerializer().Deserialize<Code>(smsData);
            if (VerificationCode.reply.ToLower().Contains("success"))
            {
                Session[KeyConstant.Session_msisdn] = msisdn;
                Session[KeyConstant.Session_Content_Access] = "1";
                SiteMaster master = (SiteMaster)this.Master;
                master.SubscriptionCheck();
                if ((string)Session[KeyConstant.Session_subscribed] == "0")
                {
                    Response.Redirect("~/subscription.aspx");
                }
                else
                {
                    Response.Redirect("home.aspx");
                }
            }
            else
            {
                lblInvalidCode.Text = "Invalid Pin.Please Try Again";
                verifyCodeTextBox.Visible = true;
                btnVerifyCodeButton.Visible = true;
            }
        }
    }
}