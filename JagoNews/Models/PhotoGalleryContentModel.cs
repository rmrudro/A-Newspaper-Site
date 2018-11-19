using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class PhotoGalleryContentModel
{
    public int? photo_id { get; set; }
    public int? album_id { get; set; }
    public int? CategoryID_BN { get; set; }
    public int? CategoryID_EN { get; set; }
    public int? SubCatID { get; set; }
    public int? SpecialCategoryID_BN { get; set; }
    public int? SpecialCategoryID_EN { get; set; }
    public string caption { get; set; }
    public string caption_bn { get; set; }
    public string PhotographerName { get; set; }
    public string PhotographerNameBN { get; set; }
    public string img_path { get; set; }
    public int? img_type { get; set; }
    public int? show_at_slide { get; set; }
    public string created_at { get; set; }
    public string updated_at { get; set; }
    public int? NewsID { get; set; }
    public int? deletable { get; set; }
    public string description { get; set; }
    public string description_bn { get; set; }
    //public var  "album": {
    //    "album_id": 4534,
    //    "cat_id": 5,
    //    "subcat_id": 20,
    //    "album_name": "10 strategies to increase salary in the job",
    //    "album_name_bn": "চাকরিতে বেতন বাড়ানোর ১০টি কৌশল",
    //    "description": null,
    //    "description_bn": "<p>&nbsp;অনেকে বছরের পর বছর চাকরি করে যাচ্ছেন বেতন মোটেই বাড়ছে না। তারা জেনে নিন বেতন বাড়ানোর ১০টি কৌশল।</p>",
    //    "img_path": "2017November/job-1-20171218201629.jpg",
    //    "top_home": 1,
    //    "top_inner": 1,
    //    "album_slug": "10-strategies-to-increase-salary-in-the-job",
    //    "tags": "টিপস,বিউটি-টিপস",
    //    "deletable": 1,
    //    "created_at": "2017-12-18 20:16:29",
    //    "updated_at": "2017-12-18 20:16:29"
}
