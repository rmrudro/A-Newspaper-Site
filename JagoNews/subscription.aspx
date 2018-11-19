<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="subscription.aspx.cs" Inherits="JagoNews.subscription" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%--<div class="row">
        <div class="col-md-12 col-sm-12">

            <div class="col-md-5 subscriptionsection">
                To subscribe click subscribe button
                <asp:Label ID="lbl" runat="server" Text="" Visible="false"></asp:Label>
            </div>

            <div class="col-md-7 subscriptionsection">
                
                <br />
                <asp:Button ID="btnsubscription" CssClass="btn-danger" runat="server" Text="Subscribe" OnClick="btnsubscription_Click" />
            </div>
            <%--  <div class="col-md-1">
                <asp:Label ID="Label1" runat="server" Text="" Visible="false"></asp:Label>
            </div>
        </div>

    </div>--%>

     <div class="text-center">
        <div class="full-block">
            <div style="color:#ff0000;" id="txtError" runat="server"></div>
            <br /><br />
            <p><b>You have to subscribe to use JagoNews Wap service. Please click on the subscribe button to confirm your subscription</b></p>
    <table class="table table-bordered">
     <thead>
      <tr style="text-align:center">
        <th>Daily Auto Renewal<br />
            BDT 2.44<br />
        <asp:Button ID="Button1" CssClass="btn-danger" runat="server" Text="Subscribe" OnClick="Button1_Click" />

        </th>
        <th>Daily Onetime<br />
            BDT 2.44<br />
       <asp:Button ID="Button2" CssClass="btn-danger" runat="server" Text="Subscribe" OnClick="Button2_Click" />
        </th>
      </tr>
    </thead>
        <tbody>
          <tr style="text-align:center">
        <th>Weekly Auto Renewal<br />
            BDT 8.52<br />
            <asp:Button ID="Button3" CssClass="btn-danger" runat="server" Text="Subscribe" OnClick="Button3_Click" />
        </th>
        <th>Weekly Onetime<br />
             BDT 12.18<br />
               <asp:Button ID="Button4" CssClass="btn-danger" runat="server" Text="Subscribe" OnClick="Button4_Click" />

        </th>
      </tr>
    </tbody>
        <tbody>
      <tr style="text-align:center">
        <th>Monthly  Auto Renewal<br />
            BDT 30.44<br />
            <asp:Button ID="Button5" CssClass="btn-danger" runat="server" Text="Subscribe" OnClick="Button5_Click" />

        </th>
        <th>Monthly  Onetime<br />
            BDT 36.53<br />
            <asp:Button ID="Button6" CssClass="btn-danger" runat="server" Text="Subscribe" OnClick="Button6_Click" />
        </th>
      </tr>
    </tbody>
  </table>
            <p>All prices are including VAT,SD and SC</p>
<%--            <asp:Button ID="btnsubscription" CssClass="btn-danger" runat="server" Text="Subscribe" OnClick="btnsubscription_Click" />
            <br /><br />--%>
            <p><b>Or you can go back to home page by click Cancel button</b></p>
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn-danger" OnClick="btnCancel_Click" />
        </div>
    </div>
</asp:Content>
