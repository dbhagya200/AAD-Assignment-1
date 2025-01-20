<%--
  Created by IntelliJ IDEA.
  User: dilini
  Date: 1/18/25
  Time: 8:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Men's Formal</title>
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
    />

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500,700,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Droid+Serif:400,400i,700,700i" rel="stylesheet">

    
    <!-- Custom & Default Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/carousel.css">
    <link rel="stylesheet" href="css/animate.css">
    <%--    <link rel="stylesheet" href="css/style.css">--%>
    <link rel="stylesheet" href="css/loginHome.css">
    <link rel="stylesheet" href="css/shoes-collection.css">
</head>
<body>
<div id="preloader">
    <img class="preloader" src="/images/loader.gif" alt="">
</div><!-- end loader -->
<!-- END LOADER -->

<%--<section class="content">--%>
<%--    <video preload="none" autoplay muted loop playsinline="true" src="upload/WhatsApp%20Video%202025-01-14%20at%206.13.31%20PM.mp4"></video>--%>
<%--</section>--%>



<div id="wrapper">
    <!-- BEGIN # MODAL LOGIN -->
    <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-hidden="true" style="display: none;">
        <div class="modal-dialog">
            <div class="modal-content">
                <!-- Begin # DIV Form -->
                <div id="div-forms">
                    <form id="login-form">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span class="flaticon-add" aria-hidden="true"></span>
                        </button>
                        <div class="modal-body">
                            <input class="form-control" type="text" placeholder="What you are looking for?" required>
                        </div>
                    </form><!-- End # Login Form -->
                </div><!-- End # DIV Form -->
            </div>
        </div>
    </div>
    <!-- END # MODAL LOGIN -->

    <header class="header">
        <div class="topbar clearfix">
            <div class="container">
                <div class="row-fluid">
                    <div class="col-md-6 col-sm-6 text-left">
                        <p>
                            <strong><i class="fa fa-phone"></i></strong> +94 25 222 51 47 &nbsp;&nbsp;
                            <strong><i class="fa fa-envelope"></i></strong> <a href="mailto:#">info@ecommerce.com</a>
                        </p>
                    </div><!-- end left -->
                    <div class="col-md-6 col-sm-6 hidden-xs text-right">
                        <div class="social">
                            <a class="facebook" href="#" data-tooltip="tooltip" data-placement="bottom" title="Facebook"><i  style="margin-top: 8px " class="fa fa-facebook"></i></a>
                            <a class="twitter" href="#" data-tooltip="tooltip" data-placement="bottom" title="Twitter"><i style="margin-top: 8px " class="fa fa-twitter"></i></a>
                            <a class="google" href="#" data-tooltip="tooltip" data-placement="bottom" title="Google Plus"><i style="margin-top: 8px " class="fa fa-google-plus"></i></a>
                            <a class="linkedin" href="#" data-tooltip="tooltip" data-placement="bottom" title="Linkedin"><i style="margin-top: 8px " class="fa fa-linkedin"></i></a>
                            <a class="pinterest" href="#" data-tooltip="tooltip" data-placement="bottom" title="Pinterest"><i style="margin-top: 8px " class="fa fa-pinterest"></i></a>
                        </div><!-- end social -->
                    </div><!-- end left -->
                </div><!-- end row -->
            </div><!-- end container -->
        </div><!-- end topbar -->

        <div class="container">
            <nav class="navbar navbar-default yamm">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <div class="logo-normal">
                        <a style="display: flex" class="navbar-brand" href="index.jsp"><img src="images/apple-touch-icon.png" alt=""><h2 style="color: white">EchoCart</h2></a>
                    </div>
                </div>

                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="loginHome.jsp">Home</a></li>
                        <li class="dropdown hassubmenu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">For Mens <span class="fa fa-angle-down"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="shoes-collection.jsp#men-main">Men </a></li>
                                <li><a href="shoes-collection.jsp#formal-shoes">Formal Shoes</a></li>
                                <li><a href="shoes-collection.jsp#sports-shoes">Men's Sports</a></li>
                                <li><a href="shoes-collection.jsp#casual-shoes">Men's Casual Shoes</a></li>
                                <li><a href="shoes-collection.jsp#flip">Men's Flip Flops</a></li>
                            </ul>
                        </li>
                        <li class="dropdown hassubmenu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">For Womens <span class="fa fa-angle-down"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="blog.html">Women</a></li>
                                <li><a href="blog.html">Women's Heel</a></li>
                                <li><a href="blog-1.html">Women's Closed Shoes</a></li>
                                <li><a href="blog-1.html">Women's Sports</a></li>
                                <li><a href="blog-2.html">Women's Casual Shoes</a></li>
                                <li><a href="blog-3.html">Women's Sndals</a></li>
                                <li><a href="blog-single.html">Women's Flip Flops</a></li>
                            </ul>
                        </li>
                        <li class="dropdown hassubmenu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Kids <span class="fa fa-angle-down"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="blog.html">Kids</a></li>
                                <li><a href="blog.html">Women's Heel</a></li>
                                <li><a href="blog-1.html">Women's Closed Shoes</a></li>
                                <li><a href="blog-1.html">Women's Sports</a></li>
                                <li><a href="blog-2.html">Women's Casual Shoes</a></li>
                                <li><a href="blog-3.html">Women's Sndals</a></li>
                                <li><a href="blog-single.html">Women's Flip Flops</a></li>
                            </ul>
                        </li>
                        <li class="dropdown hassubmenu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"> Brands <span class="fa fa-angle-down"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="blog.html">Women's Heel</a></li>
                                <li><a href="blog-1.html">Women's Closed Shoes</a></li>
                                <li><a href="blog-1.html">Women's Sports</a></li>
                                <li><a href="blog-2.html">Women's Casual Shoes</a></li>
                                <li><a href="blog-3.html">Women's Sndals</a></li>
                                <li><a href="blog-single.html">Women's Flip Flops</a></li>
                            </ul>
                        </li>
                        <li><a href="#contact">Contact</a></li>
                        <li class="iconitem"><a href="#" data-toggle="modal" data-target="#login-modal"><i class="fa fa-search"></i></a></li>
                        <li class="iconitem"><a class="shopicon" href="shop-cart.html"><i class="fa fa-shopping-basket"></i> &nbsp;(0)</a></li>
                    </ul>
                </div>
            </nav><!-- end navbar -->
        </div><!-- end container -->
    </header>

    <section id="home" class="video-section js-height-full" style="background-color: #2c2f33">


        <div class="home-text-wrapper relative container" >

            <div class="home-message"  >

                <section class="section gb main-c " id="men-main"  style="padding: 0px;backface-visibility: hidden;overflow-x: hidden; background: unset" >
                    <h1 style="color: white;text-align: start;margin-left: 20px;
                    margin-top: 200px">Men's Collection</h1>
                    <section  class="recipes">

                        <div class="image-gallery">
                            <a href=".jsp" class="recipe-card">
                                <img src="upload/m-formal-1.jpg" alt="" />
                                <div class="description">
                                    <p style="text-align: start">
                                        Mens Black Formal<br>
                                        shoes - ALBIE-SLIP<br>
                                    <hr>
                                    Rs.3,999.00
                                    </p>
                                </div>
                            </a>
                            <a href=".jsp" class="recipe-card">
                                <img src="upload/m-casual-1.jpg" alt="" />
                                <div class="description">
                                    <p style="text-align: start">
                                        North Star white high-top <br>
                                        sneaker – Pulsar<br>
                                    <hr>
                                    Rs.3,499.00
                                    </p>
                                </div>
                            </a>
                            <a href=".jsp" class="recipe-card">
                                <img src="upload/m-sport-1.jpg" alt="" />
                                <div class="description">
                                    <p style="text-align: start">
                                        Mens Ash Sports<br>
                                        shoes - MIKI<br>
                                    <hr>
                                    Rs.6,999.00
                                    </p>
                                </div>
                            </a>
                            <a href=".jsp" class="recipe-card">
                                <img src="upload/m-flip-1.jpg" alt="" />
                                <div class="description">
                                    <p style="text-align: start">
                                        Mens Grey two tone <br>
                                        Flip Flop – MANTIS <br>
                                    <hr>
                                    Rs.1,099.00
                                    </p>
                                </div>
                            </a>
                            <div class="input-group input-group-sm mb-3">
                                <span class="input-group-text" >Quantity</span>
                                <input type="number" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" value="1">
                                <button class="btn btn-success">Add to Cart</button>
                            </div>
                        </div>
                    </section>


                </section>







            </div>
        </div>







    </section>






</div><!-- end wrapper -->

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/carousel.js"></script>
<script src="js/animate.js"></script>
<script src="js/custom.js"></script>
</body>
</html>
