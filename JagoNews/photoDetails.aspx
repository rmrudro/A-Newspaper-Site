<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="photoDetails.aspx.cs" Inherits="JagoNews.photoDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="externalLayout">

        <div class="row">
            <div class="col-md-12 margin-top-30">
                <div class="row">
                    <div class="col-md-8">
                        <asp:Repeater ID="rptPhotogalleryContent" runat="server">
                            <ItemTemplate>
                                <%--<a href="/Summary.aspx?ID=<%= Eval("CustomerID")%>"--%>

                                <img src='<%#Eval("img_path").ToString() %>' alt="">



                                <div class="content-sectionss">
                                    <p><%#Eval("caption_bn")%></p>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <div class="col-md-4">
                        <div class="section_header">
                            <h2 class="section-title"><a href="#">আরও</a><span class="line"></span></h2>
                        </div>
                        <ul class="spost_nav">
                            <asp:Repeater ID="rptphotomore" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <div class="news-item-block">
                                            <div class="media">
                                                <a href="/photoDetails.aspx?galid=<%#Eval("album_id")%>" class="media-left">
                                                    <img alt="" src="<%#Eval("img_path").ToString() %>">
                                                </a>
                                                <div class="media-body"><a href="/photoDetails.aspx?galid=<%#Eval("album_id")%>"><%#Eval("album_name_bn")%></a></div>
                                            </div>
                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
