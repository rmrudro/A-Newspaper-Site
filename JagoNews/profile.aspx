<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="JagoNews.profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="section-thumb">
        <div class="full-block section-thumb">
            <div>
                <h3>
                    <span id="section-title" style="padding-left:15px">Subscription History</span>
                </h3>
            </div>
            <div>
                <p id="psubinfo" style="padding-left:15px" runat="server"></p>
            </div>
            <div class="data-tab">
                <asp:GridView ID="gvUserProfile" runat="server" AutoGenerateColumns="False" CssClass="table table-condensed table-hover table-striped">
                    <Columns>
                        <asp:TemplateField HeaderText="Reg Status">
                            <ItemTemplate>
                                <asp:Label ID="lblRegStatus_" runat="server" CssClass="gridtext" Text='<%# Bind("RegStatusStr") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Rate">
                            <ItemTemplate>
                                <asp:Label ID="lblRateFee_" runat="server" CssClass="gridtext" Text='<%# Bind("RateFee") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Date">
                            <ItemTemplate>
                                <asp:Label ID="lblRegDate_" runat="server" CssClass="gridtext" Text='<%#Eval("RegDate", "{0:dd/MM/yyyy HH:mm}") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EmptyDataTemplate>No Record Available</EmptyDataTemplate>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
