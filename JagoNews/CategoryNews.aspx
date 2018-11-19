<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CategoryNews.aspx.cs" Inherits="JagoNews.CategoryNews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="externalLayout">
        <div class="row">
            <div class="col-md-12 margin-top-15">
                <div class="row">
                    <div class="col-md-8">
                        <div class="single_iteam">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="row">
                                        <div class="col-md-8">
                                            <asp:Repeater ID="rptTopeNews1" runat="server">
                                                <ItemTemplate>
                                                    <div class="news-item-block">
                                                        <a href="/NewsDetails.aspx?cid=<%#Eval("content_id")%>">
                                                            <img src='<%#Eval("img_sm_path").ToString() %>' alt=""> </img>
                                                        </a>
                                                        <div class="news-content-block">
                                                            <div class="fh-titlebar-auto">
                                                                <a href="/NewsDetails.aspx?cid=<%#Eval("content_id")%>">
                                                                    <h2><%#Eval("content_heading")%></h2>
                                                                </a>
                                                            </div>
                                                            <div class="content-sectionss">
                                                                <p><%#Eval("content_brief")%></p>
                                                            </div>
                                                        </div>
                                                        <div class="news-bottom">

                                                            <a href="/TagNews.aspx?tagname=<%#Eval("tags")%>" class="tags">
                                                                <%--<a href="/TagNews.aspx?tagname=<%#Eval("tags").ToString().PadRight(4).Substring(0,4)%>" class="tags">--%>
                                                                <%-- Eval("My Text").ToString().PadRight(140).Substring(0,140).TrimEnd()--%>
                                                                <i class="fa fa-tags"></i>
                                                                <%-- <%#((string)Eval("tags")).Split(new string[] {","}, StringSplitOptions.None)[0]%>--%>
                                                                <%-- <%#((string)Eval("tags")).Replace(",", "")%>--%>

                                                                <%#Eval("tags")%>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </div>
                                        <div class="col-md-4">
                                            <asp:Repeater ID="rptTopeNews2" runat="server">
                                                <ItemTemplate>
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
                                                                <%-- <%#((string)Eval("tags")).Split(new string[] {","}, StringSplitOptions.None)[0]%>--%>
                                                                <%#Eval("tags") %>
                                                                
                                                            </a>
                                                        </div>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="row">
                                        <asp:Repeater ID="rptTopeNews3" runat="server">
                                            <ItemTemplate>
                                                <div class="col-md-4">
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
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
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
                                                        <div class="news-item-block">
                                                            <div class="media">
                                                                <a href="/NewsDetails.aspx?cid=<%#Eval("content_id")%>" class="media-left">
                                                                    <img alt="" src='<%#Eval("img_sm_path").ToString() %>'>
                                                                </a>
                                                                <div class="media-body"><a href="/NewsDetails.aspx?cid=<%#Eval("content_id")%>"><%#Eval("content_heading")%></a></div>
                                                            </div>
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
                                                        <div class="news-item-block">
                                                            <div class="media">
                                                                <a href="/NewsDetails.aspx?cid=<%#Eval("content_id")%>" class="media-left">
                                                                    <img alt="" src='<%#Eval("img_sm_path").ToString() %>'>
                                                                </a>
                                                                <div class="media-body"><a href="/NewsDetails.aspx?cid=<%#Eval("content_id")%>"><%#Eval("content_heading")%></a></div>
                                                            </div>
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
