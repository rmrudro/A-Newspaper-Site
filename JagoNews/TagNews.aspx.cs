using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JagoNews
{
    public partial class TagNews : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session[KeyConstant.PageId] = "137";
            if (Session[KeyConstant.Session_Content_Access].ToString() != "1")
            {
                Response.Redirect("~/mobileInternet.aspx");
            }
            if (Session[KeyConstant.Session_subscribed].ToString() == "0")
            {
                Response.Redirect("~/subscription.aspx");
            }
            string tagname = Convert.ToString(Request.QueryString["tagname"]);
            if (!IsPostBack)
            {
                GetTagNews(tagname);
            }
        }
        public void GetTagNews(string tagname)
        {
            lbltagnews.Text = tagname;
            using (WebClient wc = new WebClient() { Encoding = Encoding.UTF8 })
            {
                var ParsedObj = wc.DownloadString("https://www.jagonews24.com/api/v2/tag-group/"+tagname+"?start=0&to=15&key=N3w7e2343W4s963jA2o34P");
                IList<NewsModel> allNews = new List<NewsModel>();
                allNews = JsonConvert.DeserializeObject<List<NewsModel>>(ParsedObj);
                rptTagNews.DataSource = allNews;
                rptTagNews.DataBind();

            }
        }
    }
}