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
    public partial class subscription : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session[KeyConstant.Session_Content_Access].ToString() == null)
            //{
            //    Response.Redirect("~/mobileInternet.aspx");
            //}
            Session[KeyConstant.PageId] = "136";
            if (Session[KeyConstant.Session_Content_Access].ToString() != "1")
            {
                Response.Redirect("~/mobileInternet.aspx");
            }
           

            HtmlGenericControl divServiceInformation = (HtmlGenericControl)Master.FindControl("divServiceInformation");
            divServiceInformation.Visible = false;

            HtmlGenericControl divsubheader = (HtmlGenericControl)Master.FindControl("divsubheader");
            divsubheader.Visible = false;
          
            
        }

        protected void btnsubscription_Click(object sender, EventArgs e)
        {
           
            LinkButton lnk = sender as LinkButton;
            String Type = lnk.Attributes["CustomParameter"].ToString();
            //using (WebClient wc = new WebClient())
            //{
            //    var NewParsedObj = wc.DownloadString("http://crux.bongobd.com/api/SubUnsub/Subscription?msisdn="+ Session[KeyConstant.Session_msisdn].ToString()+ "&keyword=JN&channel=1");
            //    SubscriptionModel objsubscription = new JavaScriptSerializer().Deserialize<SubscriptionModel>(NewParsedObj);

            //    string version = objsubscription.version;
            //    string reply = objsubscription.reply;
            //    if (reply == "success")
            //    {
            //        Session[KeyConstant.Session_subscribed] = 1;
            //        Response.Redirect("home.aspx");
            //    }
            //    else
            //    {
            //        Response.Redirect("home.aspx");
            //    }


            //}
        }
        public void Subscribe(string ProductId)
        {
            string url = "http://plexus.bongobd.com/robiConsent.aspx?msisdn=" + Session[KeyConstant.Session_msisdn] + "&productID=" + ProductId + "&callBackUrl=http://wap.jagonews24.com/";
            Response.Redirect(url);
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Subscribe("0300411144");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Subscribe("0300411150");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Subscribe("0300411146");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Subscribe("0300411152");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Subscribe("0300411148");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Subscribe("0300411154");
        }
    }
}