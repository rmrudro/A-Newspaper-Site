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
    public partial class archive : System.Web.UI.Page
    {
        int startindex = 0;
        int endindex = 20;
        int count = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session[KeyConstant.Session_Content_Access].ToString() != "1")
            //{
            //    Response.Redirect("~/mobileInternet.aspx");
            //}
            //if (Session[KeyConstant.Session_subscribed].ToString() == "0")
            //{
            //    Response.Redirect("~/subscription.aspx");
            //}
            Session[KeyConstant.PageId] = "128";
            if (!IsPostBack)
            {
                
              //  if()
                if(txtinfrom.Value=="" && txtinto.Value == "")
                {
                    GetArchiveNews();
                    ddlCatagoryLoad();
                }
                else
                {
                    ddlCatagoryLoad();
                   // getarchivenewsfromdate(0,20);
                }
                
            }
        }
        public void ddlCatagoryLoad()
        {
            using (WebClient wc = new WebClient() { Encoding = Encoding.UTF8 })
            {
                var ParsedObj = wc.DownloadString("http://www.jagonews24.com/api/v2/all-category?key=N3w7e2343W4s963jA2o34P ");

                IList<CatagoryModel> allcatagory = new List<CatagoryModel>();

                allcatagory = JsonConvert.DeserializeObject<List<CatagoryModel>>(ParsedObj);
                ddlAllCategory.DataSource = allcatagory;
                ddlAllCategory.DataValueField = "ID";
                ddlAllCategory.DataTextField = "CatName";
                ddlAllCategory.DataBind();
                ddlAllCategory.Items.Insert(0, new ListItem("--সকল ক্যাটাগরি--", String.Empty));
            }
        }
        public void GetArchiveNews()
        {
            
            DateTime dateTime = DateTime.UtcNow.Date;
            DateTime previousday= dateTime.AddDays(-20);
            // var datetime1 = dateTime
            string getdatetoday = dateTime.ToString("dd/MM/yyyy");
            string getdateprevious= previousday.ToString("dd/MM/yyyy");
            using (WebClient wc = new WebClient() { Encoding = Encoding.UTF8 })
            {
                var ParsedObj = wc.DownloadString("http://www.jagonews24.com/api/v2/archive?dateFrom="+ getdateprevious + "&dateTo="+ getdatetoday + "&cat=2&start="+ startindex + "&to="+ endindex + "&key=N3w7e2343W4s963jA2o34P ");
                //var ParsedObj = wc.DownloadString("http://www.jagonews24.com/api/v2/archive?dateFrom=9/12/2017&dateTo=10/12/2017&cat=2&start=0&to=15&key=N3w7e2343W4s963jA2o34P ");
                IList <NewsModel> allArchivenews = new List<NewsModel>();
                allArchivenews = JsonConvert.DeserializeObject<List<NewsModel>>(ParsedObj);
                rptArchiveNews.DataSource = allArchivenews;
                rptArchiveNews.DataBind();
            }

        }
        

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            getarchivenewsfromdate(0,20);
        }
        private void getarchivenewsfromdate(int start,int to)
        {
            //int test1 = startindex;
            //int test2 = endindex;
            string datefrom = txtinfrom.Value;
            string dateto = txtinto.Value;
            using (WebClient wc = new WebClient() { Encoding = Encoding.UTF8 })
            {
                var ParsedObj = wc.DownloadString("http://www.jagonews24.com/api/v2/archive?dateFrom=" + datefrom + "&dateTo=" + dateto + "&cat=2&start="+start+"&to="+ to + "&key=N3w7e2343W4s963jA2o34P ");
                //var ParsedObj = wc.DownloadString("http://www.jagonews24.com/api/v2/archive?dateFrom=9/12/2017&dateTo=10/12/2017&cat=2&start="&to=20&key=N3w7e2343W4s963jA2o34P ");
                IList<NewsModel> allArchivenews = new List<NewsModel>();
                int ss = allArchivenews.Count;
                allArchivenews = JsonConvert.DeserializeObject<List<NewsModel>>(ParsedObj);
                rptArchiveNews.DataSource = allArchivenews;
                rptArchiveNews.DataBind();
                
                
            }

            (Session[KeyConstant.Session_Page_number_from]) = start;
            (Session[KeyConstant.Session_Page_number_to]) = to;
            // buttontrack(start, to);
            // paging(start, to);
        }

        protected void btnnext_Click(object sender, EventArgs e)
        {
            //lblcounts.Text = count.ToString();
            //count = Convert.ToInt32(lblcounts.Text);
            //count = ++count;
            //int start = count * 20;
            //int to = start + 20;
            //getarchivenewsfromdate(start, to);
            //  int start = 
            if (Session[KeyConstant.Session_Page_number_from] != "0")
            {
                int start = Convert.ToInt32(Session[KeyConstant.Session_Page_number_from]);
                int to = Convert.ToInt32(Session[KeyConstant.Session_Page_number_to]);
                start = to;
                to = to + 20;
                getarchivenewsfromdate(start, to);
            }

            // buttontrack(null,null);
            // paging();
            //getarchivenewsfromdate(int start, int to);

        }
        //private void buttontrack(int? start,int? to)
        //{
        //    start = to;
        //    to = to + 20;
        //   // getarchivenewsfromdate(start, to);
        //}
        //private void paging(int start,int to)
        //{
        //    start = to;
        //    to = to + 20;
        //    getarchivenewsfromdate(start, to);

        //}
        

        protected void btnprevious_Click(object sender, EventArgs e)
        {
            endindex = endindex - 20;
            startindex = endindex - 20;
            getarchivenewsfromdate(startindex,endindex);
        }
    }
}