<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TagNews.aspx.cs" Inherits="JagoNews.TagNews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12 margin-top-30">
            <div class="row">
                <div class="col-md-8">
                    <div class="section_header">
                        <h2 class="section-title">
                            <asp:Label ID="lbltagnews" runat="server" Text=""></asp:Label>
                            <span class="line"></span>
                        </h2>
                    </div>
                    <div class="single_iteam">
                        <div class="row">
                            <asp:Repeater ID="rptTagNews" runat="server">
                                <ItemTemplate>
                                    <div class="col-md-4">
                                        <div class="news-item-block single-block">
                                            <a href="/NewsDetails.aspx?cid=<%#Eval("content_id")%>">
                                                <img alt="" src='<%#Eval("img_sm_path").ToString() %>'>
                                            </a>
                                            <div class="news-content-block">
                                                <div class="fh-titlebar">
                                                    <a href="/NewsDetails.aspx?cid=<%#Eval("content_id")%>">
                                                        <h4><%#Eval("content_heading")%></h4>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="news-bottom">
                                                <a href="/TagNews.aspx?tagname=<%#Eval("tags")%>" class="tags">
                                                    <i class="fa fa-tags"></i>
                                                    <%#((string)Eval("tags")).Split(new string[] {","}, StringSplitOptions.None)[0]%>
                                                    <%-- <%#Eval("tags") %>--%>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>

                    </div>
                    <div role="tabpanel" class="tab-pane" id="popular">
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</asp:Content>
