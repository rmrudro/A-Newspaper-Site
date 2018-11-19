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
    public partial class photoDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session[KeyConstant.PageId] = "134";
            if (Session[KeyConstant.Session_Content_Access].ToString() != "1")
            {
                Response.Redirect("~/mobileInternet.aspx");
            }
            if (Session[KeyConstant.Session_subscribed].ToString() == "0")
            {
                Response.Redirect("~/subscription.aspx");
            }
            int galid = Convert.ToInt32(Request.QueryString["galid"]);
            
            if (!IsPostBack)
            {
                photogalarycontent(galid);
                getMorephoto();
            }
        }
        public void photogalarycontent(int galid)
        {
            using (WebClient wc = new WebClient() { Encoding = Encoding.UTF8 })
            {
                var ParsedObj = wc.DownloadString("http://www.jagonews24.com/api/v2/gallery/"+galid+"?&key=N3w7e2343W4s963jA2o34P ");
                
                IList<PhotoGalleryContentModel> allphotodetails = new List<PhotoGalleryContentModel>();
                allphotodetails = JsonConvert.DeserializeObject<List<PhotoGalleryContentModel>>(ParsedObj);
                rptPhotogalleryContent.DataSource = allphotodetails;
                rptPhotogalleryContent.DataBind();

            }
        }
        public void getMorephoto()
        {
            using (WebClient wc = new WebClient() { Encoding = Encoding.UTF8 })
            {
                var ParsedObj = wc.DownloadString("http://www.jagonews24.com/api/v2/gallery?start=0&to=15&key=N3w7e2343W4s963jA2o34P");

                IList<PhotoGalaryModel> allPhotoGalary = new List<PhotoGalaryModel>();
                allPhotoGalary = JsonConvert.DeserializeObject<List<PhotoGalaryModel>>(ParsedObj);
                rptphotomore.DataSource = allPhotoGalary;
                rptphotomore.DataBind();

            }
        }
    }
}