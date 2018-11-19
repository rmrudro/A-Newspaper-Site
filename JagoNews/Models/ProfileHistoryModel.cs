using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class ProfileHistoryModel
{
    public string version { get; set; }
    public string reply { get; set; }
    public string operationType { get; set; }
    public List<AllProfileHistoryModel> data_;

}
public class AllProfileHistoryModel
{
    public string RegStatusStr { get; set; }
    public string RateFee { get; set; }
    public DateTime RegDate { get; set; }
    public string RegStatus { get; set; }

}