using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class UpozillaModel
{
    public int? upozilla_id { get; set; }
    public int? district_id { get; set; }
    public int? division_id { get; set; }
    public string upozilla_name { get; set; }
    public string upozilla_name_bn { get; set; }
    public string upozilla_slug { get; set; }
    public string upozilla_title { get; set; }
    public string meta_description { get; set; }
    public int? deletable { get; set; }
    public string created_at { get; set; }
    public string updated_at { get; set; }
}
