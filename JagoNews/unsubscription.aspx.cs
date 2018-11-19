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
    public partial class unsubscription : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session[KeyConstant.PageId] = "138";
            if (Session[KeyConstant.Session_Content_Access].ToString() != "1")
            {
                Response.Redirect("~/mobileInternet.aspx");
            }
            //HtmlGenericControl divServiceInformation = (HtmlGenericControl)Master.FindControl("divServiceInformation");
            //divServiceInformation.Visible = false;
            //if (!IsPostBack)
            //{
                HtmlGenericControl divServiceInformation = (HtmlGenericControl)Master.FindControl("divServiceInformation");
                divServiceInformation.Visible = false;
                HtmlGenericControl divsubheader = (HtmlGenericControl)Page.Master.FindControl("divsubheader");
                divsubheader.Visible = false;
            //}
           
        }

        protected void btnunsubscription_Click(object sender, EventArgs e)
        {
            using (WebClient wc = new WebClient())
            {
                string url = "http://crux.bongobd.com/api/SubUnsub/UnSubscription?msisdn=" + Session[KeyConstant.Session_msisdn].ToString() + "&keyword=" + Session[KeyConstant.Session_subscribtionKeyword].ToString() + "&channel=1";
                var NewParsedObj = wc.DownloadString("http://crux.bongobd.com/api/SubUnsub/UnSubscription?msisdn=" + Session[KeyConstant.Session_msisdn].ToString() + "&keyword="+Session[KeyConstant.Session_subscribtionKeyword].ToString()+"&channel=1");
                SubscriptionModel objsubscription = new JavaScriptSerializer().Deserialize<SubscriptionModel>(NewParsedObj);

                string version = objsubscription.version;
                string reply = objsubscription.reply;
                if (reply == "success")
                {
                    Session[KeyConstant.Session_subscribed] = 0;
                    Response.Redirect("home.aspx");
                }
                else
                {
                    Response.Redirect("home.aspx");
                }
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }
    }
}