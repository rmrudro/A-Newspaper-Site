<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="mobileInternet.aspx.cs" Inherits="JagoNews.mobileInternet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <%--<div class="row">
        <div class="col-md-12 col-sm-12">
            <div class="col-md-4">
                <asp:Label ID="lbl" runat="server" Text="" Visible="false"></asp:Label>
            </div>
            <div class="col-md-8">
                <asp:Label ID="lblText" runat="server" Text=""></asp:Label>
            </div>
            <div class="col-md-4">
                <asp:Label ID="Label1" runat="server" Text="" Visible="false"></asp:Label>
            </div>
        </div>
    </div>--%>

    <div class="text-center">
        <div class="full-block">
            <div style="color: #ff0000;" id="txtError" runat="server"></div>
            <br />
            <br />
            <asp:Label ID="lblText" runat="server" Text=""></asp:Label>            
            <br />
            <br />
            <div class="Login" id="divLogin" runat="server">
                <table class="table">
                    <tr>
                        <td><asp:Label ID="prefixLabel" runat="server" Text="+88018 -"></asp:Label> </td>
                        <td><asp:TextBox ID="msisdnTextBox" class="form-control" placeholder="Enter your 8 digit Number" runat="server" MaxLength="8"></asp:TextBox></td>
                    </tr>
                </table>
                <asp:Button ID="btnLogin" runat="server" Text="Submit" CssClass="btn-danger" OnClick="Login_Click" />
            </div>
            <div class="Verifycode" ID="divVerifycode" runat="server" visible="false">
                <table class="table">
                    <tr>
                        <td><asp:TextBox ID="verifyCodeTextBox" class="form-control" placeholder="Enter your Verification Code" runat="server"></asp:TextBox></td>
                    </tr>
                </table>
                <asp:Button ID="btnVerifyCodeButton" runat="server" Text="Submit" CssClass="btn-danger" OnClick="verifyCode_Click" />
            </div>
            <br />
            <asp:Button ID="btnback" runat="server" Text="Back" CssClass="btn-danger" OnClick="btnback_Click" />
        </div>
        <asp:Label ID="lblInvalidCode" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>
