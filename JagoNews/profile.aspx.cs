using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JagoNews
{
    public partial class profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session[KeyConstant.PageId] = "135";
            if (Session[KeyConstant.Session_subscribed].ToString() == "1")
            {
                psubinfo.InnerText = "You are subscribed";
            }
            else if(Session[KeyConstant.Session_subscribed].ToString() == "0")
            {
                psubinfo.InnerText = "You are not subscribed";
            }
            if (!IsPostBack)
            {
                getSubscribtionhistory();
            }
        }

        private void getSubscribtionhistory()
        {
            try
            {
                using (WebClient wc = new WebClient())
                {
                    var msisdn = Session[KeyConstant.Session_msisdn].ToString();
                    DataTable dt = new DataTable();
                    var NewParsedObj = wc.DownloadString("http://crux.bongobd.com/api/History/GetSubscriptionHistory?msisdn=" + Session[KeyConstant.Session_msisdn].ToString() + "&service_id=10");
                    ProfileHistoryModel objProfileModel = new JavaScriptSerializer().Deserialize<ProfileHistoryModel>(NewParsedObj);
                    var profiledata = objProfileModel.data_;
                    gvUserProfile.DataSource = profiledata;
                    gvUserProfile.DataBind();
                    //   dt = testa.CreateDataTable(objProfileModel.data_);
                    //  dt = objCDA.GetDataTable("EXEC spGetHistorySubscription '" + Session[ServiceInformation_Generic.Session_msisdn].ToString() + "','" + WapInfo.productID + "'", ConnectionString.CN_CP);
                }
            }
            catch (Exception ex)
            {
                DataTable dt = new DataTable();
                gvUserProfile.DataSource = dt;
                gvUserProfile.DataBind();
            }
        }
    }
}