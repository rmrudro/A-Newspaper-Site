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
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session[KeyConstant.PageId] = "131";
         
            if (Request.QueryString["resultCode"] != null)
            {
                string cnfmResult = Request.QueryString["cnfmResult"].ToString() == "" ? "0" : Request.QueryString["cnfmResult"].ToString();
                string resultCode = Request.QueryString["resultCode"].ToString() == "" ? "69" : Request.QueryString["resultCode"].ToString();
                string isDoubleConfrim = Request.QueryString["isDoubleConfrim"].ToString() == "" ? "9" : Request.QueryString["isDoubleConfrim"].ToString();
                string transactionId = Request.QueryString["transactionId"].ToString() == "" ? "0" : Request.QueryString["transactionId"].ToString();
                var callURL = new WebClient();
                callURL.DownloadString("http://crux.bongobd.com/api/Consent/RobiConsentResponse?msisdn=" + Session[KeyConstant.Session_msisdn].ToString() + "&cnfmResult=" + cnfmResult + "&resultCode=" + resultCode + "&isDoubleConfrim=" + isDoubleConfrim + "&transactionId=" + transactionId);
                //Session[ServiceInformation_Generic.Session_promo] = 0;
            }


            ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;
            if (Request.QueryString["ref"] != null)
            {
                SiteMaster master = (SiteMaster)this.Master;
                master.getMSISDN();

                if (Request.QueryString["ref"]=="smssub")
                {
                    Response.Redirect("~/subscription.aspx");
                }
            }



            if (!IsPostBack)
            {

                GetTopnews();
                GetLatestNews();
                PopularNews();
                ddlDivisionLoad();
                GetPhotoGalary();

               // GetSportsNews();
            }
        }
        public void GetTopnews()
        {
            using (WebClient wc = new WebClient() { Encoding = Encoding.UTF8 })
            {

                var ParsedObj = wc.DownloadString("http://www.jagonews24.com/api/v2/home?key=N3w7e2343W4s963jA2o34P");
                HomeContentModel objHomeContent = new JavaScriptSerializer().Deserialize<HomeContentModel>(ParsedObj);

                var topContentData = objHomeContent.top;
                

                rptTopeNews1.DataSource = topContentData.GetRange(0,1);
                rptTopeNews1.DataBind();
                rptTopeNews2.DataSource = topContentData.GetRange(1, 2);
                rptTopeNews2.DataBind();
                rptTopeNews3.DataSource = topContentData.GetRange(3, 8);
                rptTopeNews3.DataBind();

                var sportscontentdata = objHomeContent.sports;
                rptSportsNews.DataSource = sportscontentdata;
                rptSportsNews.DataBind();
                var internatiopnal_content_data = objHomeContent.international;
                rptTopInternationalNews1.DataSource = internatiopnal_content_data.GetRange(0,2);
                rptTopInternationalNews1.DataBind();
                rptTopInternationalNews2.DataSource = internatiopnal_content_data.GetRange(2, 4);
                rptTopInternationalNews2.DataBind();
                var entertainment_content_data = objHomeContent.entertainment;
                rptEntertainment.DataSource = entertainment_content_data;
                rptEntertainment.DataBind();
                var national_content_data = objHomeContent.national;
                rptTopNational1.DataSource = national_content_data.GetRange(0, 2);
                rptTopNational1.DataBind();
                rptTopNational2.DataSource= national_content_data.GetRange(2, 4);
                rptTopNational2.DataBind();
                var politics_content_data = objHomeContent.politics;
                rptTopPolitics.DataSource = politics_content_data;
                rptTopPolitics.DataBind();
                var lifestyle_content_data = objHomeContent.lifestyle;
                rptTopLifestyle.DataSource = lifestyle_content_data;
                rptTopLifestyle.DataBind();
                var opinion_content_data = objHomeContent.opinion;
                rptTopOpinion.DataSource = opinion_content_data;
                rptTopOpinion.DataBind();
                // rptTopInternationalNews
                // rptSportsNews

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
        public void GetPhotoGalary()
        {
            using (WebClient wc = new WebClient() { Encoding = Encoding.UTF8 })
            {
                //rptLatestNews.Visible = false;
                var ParsedObj = wc.DownloadString("http://www.jagonews24.com/api/v2/gallery?start=0&to=15&key=N3w7e2343W4s963jA2o34P");

                IList<PhotoGalaryModel> allPhotoGalary = new List<PhotoGalaryModel>();
                allPhotoGalary= JsonConvert.DeserializeObject<List<PhotoGalaryModel>>(ParsedObj);
                rptTopPhotoGalary.DataSource = allPhotoGalary;
                rptTopPhotoGalary.DataBind();
            }
        }

        public void ddlDivisionLoad()
        {
            using (WebClient wc = new WebClient() { Encoding = Encoding.UTF8 })
            {
                //rptLatestNews.Visible = false;
                var ParsedObj = wc.DownloadString("http://www.jagonews24.com/api/v2/division/?key=N3w7e2343W4s963jA2o34P ");

                IList<DivisionModel> allDivisionlist = new List<DivisionModel>();

                allDivisionlist = JsonConvert.DeserializeObject<List<DivisionModel>>(ParsedObj);
                ddlDivisionList.DataSource = allDivisionlist;
                ddlDivisionList.DataValueField = "division_id";
                ddlDivisionList.DataTextField = "division_name_bn";
                ddlDivisionList.DataBind();
                ddlDivisionList.Items.Insert(0, new ListItem("--সকল বিভাগ--", String.Empty));
                //rptPopularNews.DataSource = allNews;
                //rptPopularNews.DataBind();
                //rptPopularNews.Visible = true;
            }
        }
        public void ddlDistrictLoad()
        {
            // 
            using (WebClient wc = new WebClient() { Encoding = Encoding.UTF8 })
            {
                var ParsedObj = wc.DownloadString("http://www.jagonews24.com/api/v2/district/"+ddlDivisionList.SelectedValue+"?key=N3w7e2343W4s963jA2o34P");
                IList<DistrictModel> allDistrictlist = new List<DistrictModel>();
                allDistrictlist = JsonConvert.DeserializeObject<List<DistrictModel>>(ParsedObj);
                ddlDistrictList.DataSource = allDistrictlist;
                ddlDistrictList.DataValueField = "district_id";
                ddlDistrictList.DataTextField = "district_name_bn";
                ddlDistrictList.DataBind();
                ddlDistrictList.Items.Insert(0, new ListItem("--জেলা--", String.Empty));
               
            }
        }
        public void ddlUpozillaLoad()
        {
            using (WebClient wc = new WebClient() { Encoding = Encoding.UTF8 })
            {
                var ParsedObj = wc.DownloadString("http://www.jagonews24.com/api/v2/upazila/" + ddlDistrictList.SelectedValue + "?key=N3w7e2343W4s963jA2o34P");
                IList<UpozillaModel> allUpozillalist = new List<UpozillaModel>();
                allUpozillalist = JsonConvert.DeserializeObject<List<UpozillaModel>>(ParsedObj);
                ddlUpozillaList.DataSource = allUpozillalist;
                ddlUpozillaList.DataValueField = "upozilla_id";
                ddlUpozillaList.DataTextField = "upozilla_name_bn";
                ddlUpozillaList.DataBind();
                ddlUpozillaList.Items.Insert(0, new ListItem("--উপজেলা--", String.Empty));
            }
        }
        protected void ddlDivisionList_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlDistrictLoad();
        }

        protected void ddlDistrictList_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            ddlUpozillaLoad();
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {

        }
    }
}