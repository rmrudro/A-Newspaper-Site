using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class SubscriptionModel
{
    public string version { get; set; }
    public string reply { get; set; }
    public string repDesc { get; set; }
    public string operationType { get; set; }

    public string msisdn { get; set; }

    public string keyword { get; set; }

    public string channel { get; set; } //only use for subscription and unsubscription
}
