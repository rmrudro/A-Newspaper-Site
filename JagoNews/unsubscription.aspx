<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="unsubscription.aspx.cs" Inherits="JagoNews.unsubscription" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%--<div class="row">
        <div class="col-md-12 col-sm-12">

            <div class="col-md-5 subscriptionsection">
                To unsubscribe click unsubscribe button
                <asp:Label ID="lbl" runat="server" Text="" Visible="false"></asp:Label>
            </div>
            <div class="col-md-7 subscriptionsection">
                on
                <br />
                <asp:Button ID="btnunsubscription" CssClass="btn-danger" runat="server" Text="UnSubscribe" OnClick="btnunsubscription_Click" />
            </div>
            <%--  <div class="col-md-1">
                <asp:Label ID="Label1" runat="server" Text="" Visible="false"></asp:Label>
            </div>
        </div>

    </div>--%>
     <div class="text-center">
        <div class="full-block">
            <div style="color:#ff0000;" id="txtError" runat="server"></div>
           <br />
           <br />
            <p><b>Do you want to unsubscribe? If yes click unsubscribe button</b></p>
            
            <asp:Button ID="btnunsubscription" CssClass="btn-danger" runat="server" Text="Unsubscribe" OnClick="btnunsubscription_Click" />
                 <br><br />
            <p><b>Or you can go back to home page by click  Cancel button</b></p>
            <asp:Button ID="btnCancel" runat="server" CssClass="btn-danger" Text="Cancel" OnClick="btnCancel_Click" />
        </div>
    </div>


</asp:Content>
