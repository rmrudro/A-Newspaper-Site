using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Reflection;
using System.Web;


public static class GlobalVariable
{
    public static DataTable dt_global { get; set; }
}
public static class SubscriptionStatus
{
    //public static bool IsSubscribed { get; set; }
    public static string SubscriptionStatusCheck(string msisdn, string keyword)
    {
        string status=String.Empty;
        if (msisdn.Length == 13)
        {
          //  EtisalatUAE_Movie.APIsubcheck.Service obj = new EtisalatUAE_Movie.APIsubcheck.Service();
          //  status = obj.SubscriptionCheck(msisdn, keyword);            
        }
        return status;
    }
}
//public static class GetMSISDN
//{
//    public static string msisdn { get; set; }
//}
public static class GetHandset
{
    public static string Handset_Manufacturer { get; set; }
    public static string Handset_Model { get; set; }
    public static string Handset_Dimension { get; set; }
    public static string Handset_OS { get; set; }

}
public class isOnlineModel
{
    public string msisdn { get; set; }
    public string isOnline { get; set; }
}
public static class WapInfo
{
    public static string wap_name = "Sports Portal NCell";
    public static int wap_id = 20;
    public static int serviceID = 1177;
    public static string subed_plan = "";
    public static string ServiceGroupID = "1";
    public static int wap_cat_download = 0;
    //public static int wap_cat_walpaper = 6;
    //public static int wap_cat_animation = 7;
    //public static int wap_cat_blocbuster = 8;
    //public static int wap_cat_video = 9;
    //public static int wap_cat_ringtone = 10;
    //public static int wap_cat_rbt_code = 11;
    //public static int wap_cat_music = 12;

    //public static string productID = "0300402458";
    //public static string ServiceID_BL = "9";
    public static string ServiceID_TT = "9";

    public static int FreeContent = 5;
    public static int ConsumeTypeDownload = 1;
    public static int ConsumeTypeStream = 2;

    //public static string Channel = "1";

    //public static string Robi_ChargingCode_Video = "WCH15";
    //public static string Robi_ChargingCode_Audio = "WCH10";
    //public static string Robi_ChargingCode_WP = "WCH5";

    //public static string blink_ChargingCode_Video = "CHVD";
    //public static string blink_ChargingCode_Audio = "CHAUD";
    //public static string blink_ChargingCode_WP = "CHWP";

    public static string TT_ChargingCode_Video = "CHVD";
    public static string TT_ChargingCode_Audio = "CHAUD";
    public static string TT_ChargingCode_WP = "CHWP";

    public static string content_price = "Free";

    public static string CatName(int CatID)
    {
        string CatName = String.Empty;
        //CDA objCDA = new CDA();
        DataTable dt = new DataTable();

    //    dt = objCDA.GetDataTable("EXEC spWapCategory 15," + CatID + "", ConnectionString.CN_CP);
        return dt.Rows[0]["name"].ToString();
    }

    public static string Service_Keyword(string plan)
    {
        string keyword = String.Empty;
        switch (plan)
        {
            case "Sports_d1t":
                keyword = "Sports_d1t";
                break;
            case "Sports_dailyr":
                keyword = "Sports_dailyr";
                break;
            case "Sports_w1t":
                keyword = "Sports_w1t";
                break;
            case "Sports_weeklyr":
                keyword = "Sports_weeklyr";
                break;
            case "Sports_m1t":
                keyword = "Sports_m1t";
                break;
            case "Sports_monthr":
                keyword = "Sports_monthr";
                break;
        }

        return keyword;

    }

    public static string GetChargingCode(string MSISDN, string ContentCategory)
    {
        string ChargeCode = String.Empty;
        string TelcoOperator = String.Empty;
        if(MSISDN.Substring(0,5)=="88018")
        TelcoOperator="robi";
        else if(MSISDN.Substring(0,5)=="88019")
            TelcoOperator="blink";
        else if (MSISDN.Substring(0, 5) == "88015")
            TelcoOperator = "TT";

        switch (ContentCategory)
        {
            case "Video":
                if (TelcoOperator == "TT")
                {
                    ChargeCode = TT_ChargingCode_Video;
                    content_price = " 15+(SD+SC+VAT)";
                }
                break;

            case "Audio":
                if (TelcoOperator == "TT")
                {
                    ChargeCode = TT_ChargingCode_Audio;
                    content_price = " 10+(SD+SC+VAT)";
                }
                break;

            case "Wallpaper":
                if (TelcoOperator == "TT")
                {
                    ChargeCode = TT_ChargingCode_WP;
                    content_price = " 5+(SD+SC+VAT)";
                }
                break;
        }

        return ChargeCode;
    }
}

public static class DownloadInfo
{
    public static int ConsumedDownload {get;set; }

    public static string SetDownloadCountMessage()
    {
       return "You have consumed " + ConsumedDownload + "  free content out of 5";
    }
}
public static class GenerateDataTable
{
    public static DataTable CreateDataTable<T>(IEnumerable<T> list)
    {
        Type type = typeof(T);
        var properties = type.GetProperties();

        DataTable dataTable = new DataTable();
        foreach (PropertyInfo info in properties)
        {
            dataTable.Columns.Add(new DataColumn(info.Name, Nullable.GetUnderlyingType(info.PropertyType) ?? info.PropertyType));
        }

        foreach (T entity in list)
        {
            object[] values = new object[properties.Length];
            for (int i = 0; i < properties.Length; i++)
            {
                values[i] = properties[i].GetValue(entity);
            }

            dataTable.Rows.Add(values);
        }

        return dataTable;
    }
}