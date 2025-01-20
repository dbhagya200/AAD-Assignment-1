<%--
  Created by IntelliJ IDEA.
  User: dilini
  Date: 1/16/25
  Time: 1:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dashboard</title>
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
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/loginHome.css">
</head>
<body>
<div id="preloader">
    <img class="preloader" src="images/loader.gif" alt="">
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
                        <li class="dropdown hassubmenu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-expanded="false"> Shoes-Collection-Categories
                                <span class="fa fa-angle-down"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="shoes-collection.jsp#s-main"> Sports Shoes Collection </a></li>
                                <li><a href="shoes-collection.jsp#training">Training Shoes</a></li>
                                <li><a href="shoes-collection.jsp#soccer">Soccer Shoes</a></li>
                                <li><a href="shoes-collection.jsp#basket">BasketBall Shoes</a></li>
                                <li><a href="shoes-collection.jsp#spikes">Spikes Shoes</a></li>
                                <li><a href="shoes-collection.jsp#cricket">Cricket Shoes</a></li>

                            </ul>
                        </li>
                        <li class="dropdown hassubmenu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-expanded="false">Brands <span class="fa fa-angle-down"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="blog.html">Nike</a></li>
                                <li><a href="blog.html">Adidas</a></li>
                                <li><a href="blog-1.html">Asics</a></li>
                                <li><a href="blog-2.html">AVI</a></li>
                                <li><a href="blog-single.html">Hoka</a></li>
                            </ul>
                        </li>
                        <li><a href="orders.jsp">Orders</a></li>
                        <li><a href="#contact">Contact</a></li>
                        <li class="iconitem"><a href="#" data-toggle="modal" data-target="#login-modal"><i class="fa fa-search"></i></a></li>
                        <li class="iconitem"><a class="shopicon" href="shop-cart.html"><i class="fa fa-shopping-basket"></i> Cart</a></li>
                    </ul>
                </div>
            </nav><!-- end navbar -->
        </div><!-- end container -->
    </header>

    <section id="home" class="video-section js-height-full">
        <video style="position: absolute; object-fit: cover; width: 100%; height: 100%;" preload="none" autoplay muted loop playsinline="true" src="upload/WhatsApp%20Video%202025-01-15%20at%2011.53.14%20PM.mp4"></video>
        <div class="overlay"></div>
        <div class="home-text-wrapper relative container" >

            <div class="home-message" >

    <section class="section gb" id="new-arrivals" style="padding: 0px;backface-visibility: hidden;overflow-x: hidden; background: unset" >

        <section id="recipes" class="recipes" style="margin-top: 200px">

            <div class="image-gallery">
                <a href="" class="recipe-card">
                    <img src="upload/nike-logo.jpeg" alt="" />
                </a>
                <a href="women's-collection.jsp" class="recipe-card">
                    <img
                            src="upload/adidas%20logo.jpeg"
                            alt="Easy Fruit Smoothie"
                    />
                </a>
                <a href="kid's-collection.jsp" class="recipe-card">
                    <img
                            src="upload/avi.png"
                            alt="Delicious Spaghetti"
                    />
                </a>

            </div>
        </section>

        <section  class="recipes" style="margin-top: 20px">

            <div class="image-gallery">
                <a href="shoes-collection.jsp" class="recipe-card" >
                    <img src="upload/asics%20logo.jpeg" alt="" />
                </a>
                <a href="women's-collection.jsp" class="recipe-card">
                    <img
                            src="upload/Hoka.jpeg"
                            alt="Easy Fruit Smoothie"
                    />
                </a>


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
