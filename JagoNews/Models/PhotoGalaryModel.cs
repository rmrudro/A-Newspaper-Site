using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class PhotoGalaryModel
{
     public int? album_id { get; set; }
     public int? cat_id { get; set; }
     public int? subcat_id { get; set; }
     public string album_name { get; set; }
     public string album_name_bn { get; set; }
     public string description { get; set; }
     public string description_bn { get; set; }
     public string img_path { get; set; }
     public int? top_home { get; set; }
     public int? top_inner { get; set; }
     public string album_slug { get; set; }
     public string tags { get; set; }
     public int? deletable { get; set; }
     public string created_at { get; set; }
     public string updated_at { get; set; }
     public string url { get; set; }

}
//"category": {
//            "cat_id": 3,
//            "cat_name": "entertainment",
//            "cat_name_bn": "বিনোদন",
//            "cat_title": null,
//            "cat_slug": "entertainment",
//            "cat_meta_keyword": "Entertainment related photo story covering  countrywide.",
//            "cat_meta_description": "Entertainment related photo story covering  countrywide.",
//            "cat_position": 1,
//            "img_icon_path": null,
//            "img_menu_path": null,
//            "img_cover_home_path": null,
//            "img_cover_inner_path": null,
//            "status": 1,
//            "deletable": 1,
//            "created_at": null,
//            "updated_at": "2017-11-27 13:01:50"
//        },
//        "subcategory": {
//            "subcat_id": 11,
//            "cat_id": 3,
//            "subcat_name": "indian",
//            "subcat_name_bn": "ভারতীয়",
//            "subcat_title": null,
//            "subcat_slug": "indian",
//            "subcat_meta_keyword": null,
//            "subcat_meta_description": null,
//            "subcat_position": 1,
//            "img_icon_path": null,
//            "img_menu_path": null,
//            "img_cover_home_path": null,
//            "img_cover_inner_path": null,
//            "status": 1,
//            "deletable": 1,
//            "created_at": null,
//            "updated_at": "2017-06-19 01:26:04"
//        }
