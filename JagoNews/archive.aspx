<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="archive.aspx.cs" Inherits="JagoNews.archive" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="http://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link rel="stylesheet" href="assets/css/calendar.css">
    <br />
    <br />
    <div class="row">
        <div class="col-md-12">
            <%--<div class="archive_upper_section">--%>
            <div class='col-md-6'>

                <div class="form-group">
                    <div class='input-group'>
                        Date From:
                            <input type='text' id='txtinfrom' runat="server" class="form-control" />
                        <span class="input-group-addon">
                            <span class="glyphicon glyphicon-calendar"></span>
                        </span>
                    </div>
                </div>
            </div>
            <div class='col-md-6'>

                <div class="form-group">
                    <div class='input-group'>
                        Date To:
                            <input type='text' id='txtinto' runat="server" class="form-control" />
                        <span class="input-group-addon">
                            <span class="glyphicon glyphicon-calendar"></span>
                        </span>
                    </div>
                </div>
            </div>
            <div class='col-md-4'>


                <asp:DropDownList ID="ddlAllCategory" CssClass="form-control" runat="server" AutoPostBack="true">
                    <%--<asp:ListItem Selected="True" Value="">Please Select Operator</asp:ListItem>--%>
                </asp:DropDownList>


            </div>
            <div class="col-md-4">
                <asp:Label ID="Label1" runat="server" Text="" Visible="false"></asp:Label>
            </div>
            <div class="col-md-3">

                <asp:Button ID="btnsearch" CssClass="btn btn-primary btn-block" runat="server" Text="খুজুন" OnClick="btnsearch_Click" />

            </div>
        </div>

    </div>

    <br />
    <br />

    <div class="row">
        <div class="col-md-12">
            <div class="single_sidebar">
                <ul class="spost_nav">
                    <asp:Repeater ID="rptArchiveNews" runat="server">
                        <ItemTemplate>
                            <div class="single-block auto">
                                <div class="col-md-6">

                                    <a href="/NewsDetails.aspx?cid=<%#Eval("content_id")%>" class="media-left">

                                        <img alt="" src='<%#Eval("img_sm_path").ToString() %>' <%#Eval("tags")%> />
                                    </a>
                                    <div class="media-body"><a href="/NewsDetails.aspx?cid=<%#Eval("content_id")%>"><%#Eval("content_heading")%></a></div>
                                    <i class="fa fa-tags">
                                        <a href="/TagNews.aspx?tagname=<%#Eval("tags")%>"></a>
                                    </i>
                                </div>

                            </div>
                        </ItemTemplate>
                    </asp:Repeater>

                </ul>
                <div class="text-center">
                    <div class="full-block">
                        <asp:Button ID="btnprevious" CssClass="btn-danger" runat="server" Text="Previous"  OnClick="btnprevious_Click" />
                        <asp:Button ID="btnnext" CssClass="btn-danger" runat="server" Text="Next" OnClick="btnnext_Click" />
                        <asp:Label ID="lblcounts" runat="server" Text=""></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        (function ($) {
            $("[id$=txtinfrom]").datepicker({
                changeMonth: true,
                changeYear: true,
                showButtonPanel: false,
                dateFormat: 'dd/mm/yy',
                // dateFormat: 'yy-mm-dd',
                //format: 'DD/MM/YYYY',
                // format: 'YYYY-MM-DD',
            });
            $("[id$=txtinto]").datepicker({
                changeMonth: true,
                changeYear: true,
                showButtonPanel: false,
                dateFormat: 'dd/mm/yy',
                //  format: 'DD/MM/YYYY',

            });
            //$("[id$=datetimepicker1]").datepicker();
            //$("[id$=datetimepicker2]").datepicker();
        }(jQuery));
    </script>

</asp:Content>

