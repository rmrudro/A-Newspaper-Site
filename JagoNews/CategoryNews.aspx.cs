using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Security.Policy;
using System.Text;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JagoNews
{
    public partial class CategoryNews : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session[KeyConstant.PageId] = "131";            
            if (!IsPostBack)
            {
                GetCategoryNews();
                GetLatestNews();
                PopularNews();
            }
        }
        public void GetCategoryNews()
        {
            string categoryname = Request.QueryString["categoryname"];

            using (WebClient wc = new WebClient() { Encoding = Encoding.UTF8 })
            {                
                var ParsedObj = wc.DownloadString("https://www.jagonews24.com/api/v2/category?category=" + categoryname + "&start=0&to=15&key=N3w7e2343W4s963jA2o34P");
                //HomeContentModel objHomeContent = new JavaScriptSerializer().Deserialize<HomeContentModel>(ParsedObj);
                List<NewsModel> objHomeContent = new JavaScriptSerializer().Deserialize<List<NewsModel>>(ParsedObj);

                //var topContentData = objHomeContent.top;


                //rptTopeNews1.DataSource = topContentData.GetRange(0,1);
                //rptTopeNews1.DataBind();
                //rptTopeNews2.DataSource = topContentData.GetRange(1, 2);
                //rptTopeNews2.DataBind();
                //rptTopeNews3.DataSource = topContentData.GetRange(3, 8);
                //rptTopeNews3.DataBind();
                rptTopeNews1.DataSource = objHomeContent.GetRange(0, 1);
                rptTopeNews1.DataBind();
                rptTopeNews2.DataSource = objHomeContent.GetRange(1, 2);
                rptTopeNews2.DataBind();
                rptTopeNews3.DataSource = objHomeContent.GetRange(3, 8);
                rptTopeNews3.DataBind();
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