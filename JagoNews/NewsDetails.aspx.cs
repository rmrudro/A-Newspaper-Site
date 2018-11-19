using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace JagoNews
{
    public partial class NewsDetails : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            Session[KeyConstant.PageId] = "133";
            if (Session[KeyConstant.Session_Content_Access].ToString() != "1")
            {
                Response.Redirect("~/mobileInternet.aspx");
            }
            if (Session[KeyConstant.Session_subscribed].ToString() == "0")
            {
                Response.Redirect("~/subscription.aspx");
            }
            int catID = Convert.ToInt32(Request.QueryString["cid"]);
           
                // Session["catId"] = catID;
                if (!IsPostBack)
                {
                    GetNewsDetals(catID);
                    GetLatestNews();
                    PopularNews();
                }

        }
        public void GetNewsDetals(int catId)
        {
            using (WebClient wc = new WebClient() { Encoding = Encoding.UTF8 })
            {
                var ParsedObj = wc.DownloadString("http://www.jagonews24.com/api/v2/specified-content/" + catId + "?key=N3w7e2343W4s963jA2o34P");
                NewsDetailsModel objnewsdetals = new JavaScriptSerializer().Deserialize<NewsDetailsModel>(ParsedObj);
                var newsdetails = objnewsdetals.specific;
                var morenews = objnewsdetals.contents;
                rptNewsDetails.DataSource = newsdetails;
                rptNewsDetails.DataBind();
                rptMoreNews.DataSource = morenews;
                rptMoreNews.DataBind();
            }
        }
        public void GetLatestNews()
        {
            using (WebClient wc = new WebClient() { Encoding = Encoding.UTF8 })
            {
                //rptPopularNews.Visible = false;
                var ParsedObj = wc.DownloadString("http://www.jagonews24.com/api/v2/recent?start=0&to=15&key=N3w7e2343W4s963jA2o34P");
                IList<NewsModel> allNews = new List<NewsModel>();
                allNews = JsonConvert.DeserializeObject<List<NewsModel>>(ParsedObj);
                rptLatestNews.DataSource = allNews;
                rptLatestNews.DataBind();
                //rptLatestNews.Visible = true;
            }
        }
        public void PopularNews()
        {
            using (WebClient wc = new WebClient() { Encoding = Encoding.UTF8 })
            {
                //rptLatestNews.Visible = false;
                var ParsedObj = wc.DownloadString("http://www.jagonews24.com/api/v2/popular?key=N3w7e2343W4s963jA2o34P");
                IList<NewsModel> allNews = new List<NewsModel>();
                allNews = JsonConvert.DeserializeObject<List<NewsModel>>(ParsedObj);
                rptPopularNews.DataSource = allNews;
                rptPopularNews.DataBind();
                //rptPopularNews.Visible = true;
            }
        }
    }
}