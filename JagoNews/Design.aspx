<!DOCTYPE html>
<script runat="server">

    Protected Sub btnSearch_ServerClick(sender As Object, e As EventArgs)

    End Sub

    Protected Sub btnsearch_ServerClick1(sender As Object, e As EventArgs)

    End Sub
</script>

<html>
<head>
    <title>JagoNews</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/animate.css">
    <link rel="stylesheet" type="text/css" href="assets/css/font.css">
    <link rel="stylesheet" type="text/css" href="assets/css/li-scroller.css">
    <link rel="stylesheet" type="text/css" href="assets/css/slick.css">
    <link rel="stylesheet" type="text/css" href="assets/css/jquery.fancybox.css">
    <link rel="stylesheet" type="text/css" href="assets/css/theme.css">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <!--[if lt IE 9]>
<script src="assets/js/html5shiv.min.js"></script>
<script src="assets/js/respond.min.js"></script>
<![endif]-->
</head>
<body>
    <div id="preloader">
        <div id="status">&nbsp;</div>
    </div>
    <a class="scrollToTop" href="#"><i class="fa fa-angle-up"></i></a>
    <div class="container">
        <header id="header">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="header_top">
                        <div class="header_top_left">
                            <p>Dhaka,Friday, December 05, 2017</p>
                            <%--  <ul class="top_nav">
                                <li><a href="index.html">Home</a></li>
                                <li><a href="#">About</a></li>
                                <li><a href="pages/contact.html">Contact</a></li>
                            </ul>--%>
                        </div>
                        <div class="header_top_right">
                            <asp:HyperLink ID="hypSubscriptioin" runat="server" ForeColor="#ffffff">Subscription</asp:HyperLink>
                            <asp:HyperLink ID="hypLogin" runat="server" ForeColor="#ffffff">Login</asp:HyperLink>
                            <%-- <a class="header_top_left_text_achor" href="pages/contact.html">Subscription</a>
                            <a class="header_top_left_text_achor" href="pages/contact.html">Login</a>--%>
                            <%--<p>Friday, December 05, 2045</p>--%>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="header_bottom">
                        <div class="logo_area">
                            <a href="index.html" class="logo">
                                <img src="images/Jagonews24-Logo.png" height="80px" width="250px" alt="" /><%--<img src="images/logo.jpg" alt="">--%></a>
                        </div>
                        <br />
                        <br />
                        <div class="add_banner">
                            <input class="flipkart-navbar-input col-xs-9" type="" placeholder="Search for news" name="">
                            <button id="btnsearch" runat="server" onserverclick="btnsearch_ServerClick1" class="flipkart-navbar-button col-xs-1">
                                <svg width="15px" height="15px">
                                    <path d="M11.618 9.897l4.224 4.212c.092.09.1.23.02.312l-1.464 1.46c-.08.08-.222.072-.314-.02L9.868 11.66M6.486 10.9c-2.42 0-4.38-1.955-4.38-4.367 0-2.413 1.96-4.37 4.38-4.37s4.38 1.957 4.38 4.37c0 2.412-1.96 4.368-4.38 4.368m0-10.834C2.904.066 0 2.96 0 6.533 0 10.105 2.904 13 6.486 13s6.487-2.895 6.487-6.467c0-3.572-2.905-6.467-6.487-6.467 "></path>
                                </svg>
                                <%-- <div class="dropdown-menu col-xs-2" aria-labelledby="dropdownMenuButton">
                                    <a class="dropdown-item" href="#">Bangla</a>
                                    <a class="dropdown-item" href="#">English</a>
                                </div>--%>
                            </button>


                        </div>
                        <%-- <div class="add_banner">
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                <a class="dropdown-item" href="#">Bangla</a>
                                <a class="dropdown-item" href="#">English</a>
                            </div>
                        </div>--%>
                        <select class="selectpicker" data-width="fit">
                            <option data-content='<span class="flag-icon flag-icon-us"></span> English'>English</option>
                            <option data-content='<span class="flag-icon flag-icon-mx"></span> Español'>Bangla</option>
                        </select>
                    </div>
                </div>
            </div>
        </header>
        <section id="navArea">
            <nav class="navbar navbar-inverse" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"><span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav main_nav">
                        <li class="active"><a href="index.html"><span class="fa fa-home desktop-home"></span><span class="mobile-show">Home</span></a></li>
                        <li><a href="#">Home</a></li>
                        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">National</a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#">Politics</a></li>
                                <li><a href="#">Bussiness</a></li>
                                <%-- <li><a href="#">Nokia</a></li>
                                <li><a href="#">Walton Mobile</a></li>
                                <li><a href="#">Sympony</a></li>--%>
                            </ul>
                        </li>
                        <li><a href="#">International</a></li>
                        <li><a href="#">Sports</a></li>
                        <li><a href="pages/contact.html">Entertainment</a></li>
                        <li><a href="pages/contact.html">Education</a></li>
                        <li><a href="pages/contact.html">Feature</a></li>
                        <li><a href="pages/contact.html">Tech</a></li>
                        <li><a href="pages/contact.html">Archive</a></li>
                        <li><a href="pages/404.html">404 Page</a></li>
                    </ul>
                </div>
            </nav>
        </section>
        <section id="newsSection">
            <div class="row">
                <div class="col-lg-9 col-md-9 col-sm-6">
                    <div class="latest_newsarea">
                        <span>Updated:29 November 2017</span>
                        <ul id="ticker01" class="news_sticker">
                            <li><a href="#">
                                <img src="images/news_thumbnail3.jpg" alt="">My First News Item</a></li>
                            <li><a href="#">
                                <img src="images/news_thumbnail3.jpg" alt="">My Second News Item</a></li>
                            <li><a href="#">
                                <img src="images/news_thumbnail3.jpg" alt="">My Third News Item</a></li>
                            <li><a href="#">
                                <img src="images/news_thumbnail3.jpg" alt="">My Four News Item</a></li>
                            <li><a href="#">
                                <img src="images/news_thumbnail3.jpg" alt="">My Five News Item</a></li>
                            <li><a href="#">
                                <img src="images/news_thumbnail3.jpg" alt="">My Six News Item</a></li>
                            <li><a href="#">
                                <img src="images/news_thumbnail3.jpg" alt="">My Seven News Item</a></li>
                            <li><a href="#">
                                <img src="images/news_thumbnail3.jpg" alt="">My Eight News Item</a></li>
                            <li><a href="#">
                                <img src="images/news_thumbnail2.jpg" alt="">My Nine News Item</a></li>
                        </ul>
                        <%-- <div class="social_area">
                            <ul class="social_nav">
                                <li class="facebook"><a href="#"></a></li>
                                <li class="twitter"><a href="#"></a></li>
                                <li class="flickr"><a href="#"></a></li>
                                <li class="pinterest"><a href="#"></a></li>
                                <li class="googleplus"><a href="#"></a></li>
                                <li class="vimeo"><a href="#"></a></li>
                                <li class="youtube"><a href="#"></a></li>
                                <li class="mail"><a href="#"></a></li>
                            </ul>
                        </div>--%>
                    </div>
                    <div class="row">
                        <div class="col-md-12 margin-top-30">
                            <div class="row">
                                <div class="col-md-8">
                                    <section id="sliderSection">                        
                                        <div class="slick_slider">
                                            <div class="single_iteam">
                                                <a href="pages/single_page.html">
                                                    <img src="images/slider_img4.jpg" alt=""></a>
                                                <div class="slider_article">
                                                    <h2><a class="slider_tittle" href="pages/single_page.html">Fusce eu nulla semper porttitor felis sit amet</a></h2>
                                                    <p>Nunc tincidunt, elit non cursus euismod, lacus augue ornare metus, egestas imperdiet nulla nisl quis mauris. Suspendisse a pharetra urna. Morbi dui...</p>
                                                </div>
                                            </div>
                                        </div>
                                    </section>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-6">
                                    <div class="gradient"></div>
                                    <div class="latest_post">
                                        <%--<h2><span>Breaking News</span></h2>--%>
                                        <div class="latest_post_container">
                                            <div id="prev-button"><i class="fa fa-chevron-up"></i></div>
                                            <ul class="latest_postnav">
                                                <li>
                                                    <div class="media">
                                                        <a href="pages/single_page.html" class="media-left">
                                                            <img alt="" src="images/post_img1.jpg">
                                                        </a>
                                                        <div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 1</a> </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="media">
                                                        <a href="pages/single_page.html" class="media-left">
                                                            <img alt="" src="images/post_img1.jpg">
                                                        </a>
                                                        <div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 2</a> </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="media">
                                                        <a href="pages/single_page.html" class="media-left">
                                                            <img alt="" src="images/post_img1.jpg">
                                                        </a>
                                                        <div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 3</a> </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="media">
                                                        <a href="pages/single_page.html" class="media-left">
                                                            <img alt="" src="images/post_img1.jpg">
                                                        </a>
                                                        <div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 4</a> </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="media">
                                                        <a href="pages/single_page.html" class="media-left">
                                                            <img alt="" src="images/post_img1.jpg">
                                                        </a>
                                                        <div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 2</a> </div>
                                                    </div>
                                                </li>
                                            </ul>
                                            <div id="next-button"><i class="fa  fa-chevron-down"></i></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>    
                    </div>
                </div>
                <div class="col-lg-3 col-md-3">                    
                    <div class="trending">
                        <div class="trending-inner">
                            <h3>Trending</h3>
                            <ul class="spost_nav">
                                <li>
                                    <div class="media wow fadeInDown">
                                        <a href="pages/single_page.html" class="media-left">
                                            <img alt="" src="images/post_img1.jpg">
                                        </a>
                                        <div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 1</a> </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="media wow fadeInDown">
                                        <a href="pages/single_page.html" class="media-left">
                                            <img alt="" src="images/post_img2.jpg">
                                        </a>
                                        <div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 2</a> </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="media wow fadeInDown">
                                        <a href="pages/single_page.html" class="media-left">
                                            <img alt="" src="images/post_img1.jpg">
                                        </a>
                                        <div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 3</a> </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="media wow fadeInDown">
                                        <a href="pages/single_page.html" class="media-left">
                                            <img alt="" src="images/post_img2.jpg">
                                        </a>
                                        <div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 4</a> </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

            </div>
        </section>
        

        <section id="contentSection">
            <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-8">
                    <div class="left_content">
                        <div class="single_post_content">
                            <h2><span>Business</span></h2>
                            <div class="single_post_content_left">
                                <ul class="business_catgnav  wow fadeInDown">
                                    <li>
                                        <figure class="bsbig_fig">
                                            <a href="pages/single_page.html" class="featured_img">
                                                <img alt="" src="images/featured_img1.jpg">
                                                <span class="overlay"></span></a>
                                            <figcaption><a href="pages/single_page.html">Proin rhoncus consequat nisl eu ornare mauris</a> </figcaption>
                                            <p>Nunc tincidunt, elit non cursus euismod, lacus augue ornare metus, egestas imperdiet nulla nisl quis mauris. Suspendisse a phare...</p>
                                        </figure>
                                    </li>
                                </ul>
                            </div>
                            <div class="single_post_content_right">
                                <ul class="spost_nav">
                                    <li>
                                        <div class="media wow fadeInDown">
                                            <a href="pages/single_page.html" class="media-left">
                                                <img alt="" src="images/post_img1.jpg">
                                            </a>
                                            <div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 1</a> </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="media wow fadeInDown">
                                            <a href="pages/single_page.html" class="media-left">
                                                <img alt="" src="images/post_img2.jpg">
                                            </a>
                                            <div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 2</a> </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="media wow fadeInDown">
                                            <a href="pages/single_page.html" class="media-left">
                                                <img alt="" src="images/post_img1.jpg">
                                            </a>
                                            <div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 3</a> </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="media wow fadeInDown">
                                            <a href="pages/single_page.html" class="media-left">
                                                <img alt="" src="images/post_img2.jpg">
                                            </a>
                                            <div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 4</a> </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="fashion_technology_area">
                            <div class="fashion">
                                <div class="single_post_content">
                                    <h2><span>Fashion</span></h2>
                                    <ul class="business_catgnav wow fadeInDown">
                                        <li>
                                            <figure class="bsbig_fig">
                                                <a href="pages/single_page.html" class="featured_img">
                                                    <img alt="" src="images/featured_img2.jpg">
                                                    <span class="overlay"></span></a>
                                                <figcaption><a href="pages/single_page.html">Proin rhoncus consequat nisl eu ornare mauris</a> </figcaption>
                                                <p>Nunc tincidunt, elit non cursus euismod, lacus augue ornare metus, egestas imperdiet nulla nisl quis mauris. Suspendisse a phare...</p>
                                            </figure>
                                        </li>
                                    </ul>
                                    <ul class="spost_nav">
                                        <li>
                                            <div class="media wow fadeInDown">
                                                <a href="pages/single_page.html" class="media-left">
                                                    <img alt="" src="images/post_img1.jpg">
                                                </a>
                                                <div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 1</a> </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="media wow fadeInDown">
                                                <a href="pages/single_page.html" class="media-left">
                                                    <img alt="" src="images/post_img2.jpg">
                                                </a>
                                                <div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 2</a> </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="media wow fadeInDown">
                                                <a href="pages/single_page.html" class="media-left">
                                                    <img alt="" src="images/post_img1.jpg">
                                                </a>
                                                <div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 3</a> </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="media wow fadeInDown">
                                                <a href="pages/single_page.html" class="media-left">
                                                    <img alt="" src="images/post_img2.jpg">
                                                </a>
                                                <div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 4</a> </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="technology">
                                <div class="single_post_content">
                                    <h2><span>Technology</span></h2>
                                    <ul class="business_catgnav">
                                        <li>
                                            <figure class="bsbig_fig wow fadeInDown">
                                                <a href="pages/single_page.html" class="featured_img">
                                                    <img alt="" src="images/featured_img3.jpg">
                                                    <span class="overlay"></span></a>
                                                <figcaption><a href="pages/single_page.html">Proin rhoncus consequat nisl eu ornare mauris</a> </figcaption>
                                                <p>Nunc tincidunt, elit non cursus euismod, lacus augue ornare metus, egestas imperdiet nulla nisl quis mauris. Suspendisse a phare...</p>
                                            </figure>
                                        </li>
                                    </ul>
                                    <ul class="spost_nav">
                                        <li>
                                            <div class="media wow fadeInDown">
                                                <a href="pages/single_page.html" class="media-left">
                                                    <img alt="" src="images/post_img1.jpg">
                                                </a>
                                                <div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 1</a> </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="media wow fadeInDown">
                                                <a href="pages/single_page.html" class="media-left">
                                                    <img alt="" src="images/post_img2.jpg">
                                                </a>
                                                <div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 2</a> </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="media wow fadeInDown">
                                                <a href="pages/single_page.html" class="media-left">
                                                    <img alt="" src="images/post_img1.jpg">
                                                </a>
                                                <div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 3</a> </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="media wow fadeInDown">
                                                <a href="pages/single_page.html" class="media-left">
                                                    <img alt="" src="images/post_img2.jpg">
                                                </a>
                                                <div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 4</a> </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="single_post_content">
                            <h2><span>Photography</span></h2>
                            <ul class="photograph_nav  wow fadeInDown">
                                <li>
                                    <div class="photo_grid">
                                        <figure class="effect-layla">
                                            <a class="fancybox-buttons" data-fancybox-group="button" href="images/photograph_img2.jpg" title="Photography Ttile 1">
                                                <img src="images/photograph_img2.jpg" alt="" /></a>
                                        </figure>
                                    </div>
                                </li>
                                <li>
                                    <div class="photo_grid">
                                        <figure class="effect-layla">
                                            <a class="fancybox-buttons" data-fancybox-group="button" href="images/photograph_img3.jpg" title="Photography Ttile 2">
                                                <img src="images/photograph_img3.jpg" alt="" />
                                            </a>
                                        </figure>
                                    </div>
                                </li>
                                <li>
                                    <div class="photo_grid">
                                        <figure class="effect-layla">
                                            <a class="fancybox-buttons" data-fancybox-group="button" href="images/photograph_img4.jpg" title="Photography Ttile 3">
                                                <img src="images/photograph_img4.jpg" alt="" />
                                            </a>
                                        </figure>
                                    </div>
                                </li>
                                <li>
                                    <div class="photo_grid">
                                        <figure class="effect-layla">
                                            <a class="fancybox-buttons" data-fancybox-group="button" href="images/photograph_img4.jpg" title="Photography Ttile 4">
                                                <img src="images/photograph_img4.jpg" alt="" />
                                            </a>
                                        </figure>
                                    </div>
                                </li>
                                <li>
                                    <div class="photo_grid">
                                        <figure class="effect-layla">
                                            <a class="fancybox-buttons" data-fancybox-group="button" href="images/photograph_img2.jpg" title="Photography Ttile 5">
                                                <img src="images/photograph_img2.jpg" alt="" />
                                            </a>
                                        </figure>
                                    </div>
                                </li>
                                <li>
                                    <div class="photo_grid">
                                        <figure class="effect-layla">
                                            <a class="fancybox-buttons" data-fancybox-group="button" href="images/photograph_img3.jpg" title="Photography Ttile 6">
                                                <img src="images/photograph_img3.jpg" alt="" />
                                            </a>
                                        </figure>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="single_post_content">
                            <h2><span>Games</span></h2>
                            <div class="single_post_content_left">
                                <ul class="business_catgnav">
                                    <li>
                                        <figure class="bsbig_fig  wow fadeInDown">
                                            <a class="featured_img" href="pages/single_page.html">
                                                <img src="images/featured_img1.jpg" alt="">
                                                <span class="overlay"></span></a>
                                            <figcaption><a href="pages/single_page.html">Proin rhoncus consequat nisl eu ornare mauris</a> </figcaption>
                                            <p>Nunc tincidunt, elit non cursus euismod, lacus augue ornare metus, egestas imperdiet nulla nisl quis mauris. Suspendisse a phare...</p>
                                        </figure>
                                    </li>
                                </ul>
                            </div>
                            <div class="single_post_content_right">
                                <ul class="spost_nav">
                                    <li>
                                        <div class="media wow fadeInDown">
                                            <a href="pages/single_page.html" class="media-left">
                                                <img alt="" src="images/post_img1.jpg">
                                            </a>
                                            <div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 1</a> </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="media wow fadeInDown">
                                            <a href="pages/single_page.html" class="media-left">
                                                <img alt="" src="images/post_img2.jpg">
                                            </a>
                                            <div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 2</a> </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="media wow fadeInDown">
                                            <a href="pages/single_page.html" class="media-left">
                                                <img alt="" src="images/post_img1.jpg">
                                            </a>
                                            <div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 3</a> </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="media wow fadeInDown">
                                            <a href="pages/single_page.html" class="media-left">
                                                <img alt="" src="images/post_img2.jpg">
                                            </a>
                                            <div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 4</a> </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4">
                    <aside class="right_content">
                        <div class="single_sidebar">
                            <h2><span>Popular Post</span></h2>
                           
                             <ul class="spost_nav">
                                <li>
                                    <div class="media wow fadeInDown">
                                        <a href="pages/single_page.html" class="media-left">
                                            <img alt="" src="images/post_img1.jpg">
                                        </a>
                                        <div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 1</a> </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="media wow fadeInDown">
                                        <a href="pages/single_page.html" class="media-left">
                                            <img alt="" src="images/post_img2.jpg">
                                        </a>
                                        <div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 2</a> </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="media wow fadeInDown">
                                        <a href="pages/single_page.html" class="media-left">
                                            <img alt="" src="images/post_img1.jpg">
                                        </a>
                                        <div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 3</a> </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="media wow fadeInDown">
                                        <a href="pages/single_page.html" class="media-left">
                                            <img alt="" src="images/post_img2.jpg">
                                        </a>
                                        <div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 4</a> </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="single_sidebar">
                            <ul class="nav nav-tabs" role="tablist">
                                <li role="presentation" class="active"><a href="#category" aria-controls="home" role="tab" data-toggle="tab">Category</a></li>
                                <li role="presentation"><a href="#video" aria-controls="profile" role="tab" data-toggle="tab">Video</a></li>
                                <li role="presentation"><a href="#comments" aria-controls="messages" role="tab" data-toggle="tab">Comments</a></li>
                            </ul>
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane active" id="category">
                                    <ul>
                                        <li class="cat-item"><a href="#">Sports</a></li>
                                        <li class="cat-item"><a href="#">Fashion</a></li>
                                        <li class="cat-item"><a href="#">Business</a></li>
                                        <li class="cat-item"><a href="#">Technology</a></li>
                                        <li class="cat-item"><a href="#">Games</a></li>
                                        <li class="cat-item"><a href="#">Life &amp; Style</a></li>
                                        <li class="cat-item"><a href="#">Photography</a></li>
                                    </ul>
                                </div>
                                <div role="tabpanel" class="tab-pane" id="video">
                                    <div class="vide_area">
                                        <iframe width="100%" height="250" src="http://www.youtube.com/embed/h5QWbURNEpA?feature=player_detailpage" frameborder="0" allowfullscreen></iframe>
                                    </div>
                                </div>
                                <div role="tabpanel" class="tab-pane" id="comments">
                                    <ul class="spost_nav">
                                        <li>
                                            <div class="media wow fadeInDown">
                                                <a href="pages/single_page.html" class="media-left">
                                                    <img alt="" src="images/post_img1.jpg">
                                                </a>
                                                <div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 1</a> </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="media wow fadeInDown">
                                                <a href="pages/single_page.html" class="media-left">
                                                    <img alt="" src="images/post_img2.jpg">
                                                </a>
                                                <div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 2</a> </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="media wow fadeInDown">
                                                <a href="pages/single_page.html" class="media-left">
                                                    <img alt="" src="images/post_img1.jpg">
                                                </a>
                                                <div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 3</a> </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="media wow fadeInDown">
                                                <a href="pages/single_page.html" class="media-left">
                                                    <img alt="" src="images/post_img2.jpg">
                                                </a>
                                                <div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 4</a> </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="single_sidebar wow fadeInDown">
                            <h2><span>Sponsor</span></h2>
                            <a class="sideAdd" href="#">
                                <img src="images/add_img.jpg" alt=""></a>
                        </div>
                        <div class="single_sidebar wow fadeInDown">
                            <h2><span>Category Archive</span></h2>
                            <select class="catgArchive">
                                <option>Select Category</option>
                                <option>Life styles</option>
                                <option>Sports</option>
                                <option>Technology</option>
                                <option>Treads</option>
                            </select>
                        </div>
                        <div class="single_sidebar wow fadeInDown">
                            <h2><span>Links</span></h2>
                            <ul>
                                <li><a href="#">Blog</a></li>
                                <li><a href="#">Rss Feed</a></li>
                                <li><a href="#">Login</a></li>
                                <li><a href="#">Life &amp; Style</a></li>
                            </ul>
                        </div>
                    </aside>
                </div>
            </div>
        </section>
        <footer id="footer">
            <div class="footer_top">
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-4">
                        <div class="footer_widget wow fadeInLeftBig">
                            <h2>Flickr Images</h2>
                        </div>
                        <img src="images/Jagonews24-Logo.png" height="80px" width="250px" alt="" />
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4">
                        <div class="footer_widget wow fadeInDown">
                            <h2>Tag</h2>
                            <ul class="tag_nav">
                                <li><a class="ablack" href="#">Games</a></li>
                                <li><a class="ablack" href="#">Sports</a></li>
                                <li><a class="ablack" href="#">Fashion</a></li>
                                <li><a class="ablack" href="#">Business</a></li>
                                <li><a class="ablack" href="#">Life &amp; Style</a></li>
                                <li><a class="ablack" href="#">Technology</a></li>
                                <li><a class="ablack" href="#">Photo</a></li>
                                <li><a class="ablack" href="#">Slider</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4">
                        <div class="footer_widget wow fadeInRightBig">
                            <h2>Contact</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                            <address>
                                Perfect News,1238 S . 123 St.Suite 25 Town City 3333,USA Phone: 123-326-789 Fax: 123-546-567
                            </address>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer_bottom">
                <p class="copyright">Copyright &copy; 2045 <a href="index.html">NewsFeed</a></p>
                <p class="developer">Developed By Wpfreeware</p>
            </div>
        </footer>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/wow.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/slick.min.js"></script>
    <script src="assets/js/jquery.li-scroller.1.0.js"></script>
    <script src="assets/js/jquery.newsTicker.min.js"></script>
    <script src="assets/js/jquery.fancybox.pack.js"></script>
    <script src="assets/js/custom.js"></script>
</body>
</html>
