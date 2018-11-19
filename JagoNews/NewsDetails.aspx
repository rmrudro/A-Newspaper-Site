<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewsDetails.aspx.cs" Inherits="JagoNews.NewsDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="externalLayout">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-lg-12 margin-top-30">
                <div class="row">

                    <div class="col-lg-8 col-md-8 col-sm-8">
                        <div class="single_iteam">
                            <asp:Repeater ID="rptNewsDetails" runat="server">
                                <ItemTemplate>
                                    <%--<a href="/Summary.aspx?ID=<%= Eval("CustomerID")%>"--%>

                                    <img src='<%#Eval("img_sm_path").ToString() %>' alt="">


                                    <h2><%#Eval("content_heading")%></h2>


                                    <b>
                                        <p><%#Eval("Writers")%></p>
                                    </b>

                                    <div class="content-sectionss">
                                        <p><%#Eval("content_details")%></p>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                        <div class="row">
                            <div class="section_header">
                                <h2 class="section-title"><a href="#">আরও পড়ুন</a><span class="line"></span></h2>
                            </div>
                            <div class="single_iteam">
                                <%--<div class="row">--%>
                                    <asp:Repeater ID="rptMoreNews" runat="server">
                                        <ItemTemplate>
                                            <div class="col-md-6">
                                                <div class="news-item-block sm-news">
                                                    <a href="/NewsDetails.aspx?cid=<%#Eval("content_id")%>">
                                                        <img src='<%#Eval("img_sm_path").ToString() %>' alt="">
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
                                                            <%--<%#((string)Eval("tags")).Split(new string[] {","}, StringSplitOptions.None)[0]%>--%>
                                                            <%# Eval("tags")%>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                <%--</div>--%>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4">
                        <aside class="right_content">
                            <div class="single_sidebar">
                                <ul class="nav nav-tabs news-tabs" role="tablist">
                                    <li role="presentation" class="active"><a href="#latest" aria-controls="home" role="tab" data-toggle="tab">সর্বশেষ</a></li>
                                    <li role="presentation"><a href="#popular" aria-controls="profile" role="tab" data-toggle="tab">জনপ্রিয়</a></li>
                                </ul>
                                <div class="tab-content">
                                    <div role="tabpanel" class="tab-pane active" id="latest">
                                        <ul class="spost_nav">
                                            <asp:Repeater ID="rptLatestNews" runat="server">
                                                <ItemTemplate>
                                                    <li>
                                                        <div class="media">
                                                            <a href="/NewsDetails.aspx?cid=<%#Eval("content_id")%>" class="media-left">
                                                                <img alt="" src='<%#Eval("img_sm_path").ToString() %>'>
                                                            </a>
                                                            <div class="media-body"><a href="/NewsDetails.aspx?cid=<%#Eval("content_id")%>"><%#Eval("content_heading")%></a></div>
                                                        </div>
                                                    </li>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </ul>
                                    </div>
                                    <div role="tabpanel" class="tab-pane" id="popular">
                                        <ul class="spost_nav">
                                            <asp:Repeater ID="rptPopularNews" runat="server">
                                                <ItemTemplate>
                                                    <li>
                                                        <div class="media">
                                                            <a href="/NewsDetails.aspx?cid=<%#Eval("content_id")%>" class="media-left">
                                                                <img alt="" src='<%#Eval("img_sm_path").ToString() %>'>
                                                            </a>
                                                            <div class="media-body"><a href="/NewsDetails.aspx?cid=<%#Eval("content_id")%>"><%#Eval("content_heading")%></a></div>
                                                        </div>
                                                    </li>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </ul>
                                    </div>
                                </div>

                            </div>
                        </aside>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
