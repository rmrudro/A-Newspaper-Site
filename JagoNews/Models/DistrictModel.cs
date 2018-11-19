using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class DistrictModel
{
    public int? district_id { get; set; }
    public int? division_id { get; set; }
    public string district_name { get; set; }
    public string district_name_bn { get; set; }
    public string district_slug { get; set; }
    public string district_title { get; set; }
    public string meta_description { get; set; }
    public int? deletable { get; set; }
    public string created_at { get; set; }
    public string updated_at { get; set; }
}

