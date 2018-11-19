using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class NewsModel
{
    public int? content_id { get; set; }
    public int? content_type { get; set; }
    public int? cat_id { get; set; }
    public int? top_home { get; set; }
    public int? top_inner { get; set; }
    public int? subcat_id { get; set; }
    public int? subcat_pos { get; set; }
    public int? special_cat_id { get; set; }
    public int? special_cat_pos { get; set; }

    public string content_sub_heading { get; set; }  //Null Value those are in Commment
    public string content_heading { get; set; }
    public string content_brief { get; set; }
    public string content_details { get; set; }
    public string Writers { get; set; }
    public string img_sm_path { get; set; }

    public string img_sm_caption { get; set; }
    public string img_bg_path { get; set; }
    public string img_bg_caption { get; set; }
    public string prev_content_ids { get; set; }
    public string news_meta_keywords { get; set; }
    public int? country_id { get; set; }
    public int? country_pos { get; set; }
    public int? division_id { get; set; }
    public int? division_pos { get; set; }
    public int? district_id { get; set; }
    public int? district_pos { get; set; }
    public int? upozilla_id { get; set; }
    public int? upozilla_pos { get; set; }
    public string quatation { get; set; }
    public string author_slugs { get; set; }
    public string reporting_area { get; set; }
    public string photo_ids { get; set; }
    public string video_type { get; set; }
    public string video_id { get; set; }
    public string meta_details { get; set; }
    public string tags { get; set; }
    public string timeline_tags { get; set; }
    public string people_tags { get; set; }
    public string place_tags { get; set; }
    public int? standout_tag { get; set; }
    public int? instant_article { get; set; }
    public int? scroll { get; set; }
    public int? status { get; set; }
    public int? deletable { get; set; }
    public string created_at { get; set; }
    public string updated_at { get; set; }
    public string url { get; set; }
    public string date_time_bn { get; set; }
    //public List<CategoryProvide> category;
    //public List<SubcategoryProvide> subcategory;
}
public class CategoryProvide
{
    public int? cat_id { get; set; }
    public string cat_name { get; set; }
    public string cat_name_bn { get; set; }
    public string cat_slug { get; set; }
}
public class SubcategoryProvide
{
    public int? subcat_id { get; set; }
	public string subcat_nameNone { get; set; }
    public string subcat_name_bn { get; set; }
    public string subcat_slug { get; set; }
}
