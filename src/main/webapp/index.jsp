<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>E-Commerce-Web-Application</title>
    <%--    <link rel="icon" type="image/jpg" href="/img/logo.jpg" style="border-radius: 100%;" />--%>
    <%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">--%>
    <%--    <link href="https://cdn.jsdelivr.net/npm/@sweetalert2/theme-dark@4/dark.css" rel="stylesheet">--%>

    <%--    <link rel="stylesheet" href="index.css">--%>
    <%--    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"></script>--%>

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
</head>
<body>
<!-- LOADER -->
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
                            <a class="facebook" href="#" data-tooltip="tooltip" data-placement="bottom" title="Facebook"><i class="fa fa-facebook"></i></a>
                            <a class="twitter" href="#" data-tooltip="tooltip" data-placement="bottom" title="Twitter"><i class="fa fa-twitter"></i></a>
                            <a class="google" href="#" data-tooltip="tooltip" data-placement="bottom" title="Google Plus"><i class="fa fa-google-plus"></i></a>
                            <a class="linkedin" href="#" data-tooltip="tooltip" data-placement="bottom" title="Linkedin"><i class="fa fa-linkedin"></i></a>
                            <a class="pinterest" href="#" data-tooltip="tooltip" data-placement="bottom" title="Pinterest"><i class="fa fa-pinterest"></i></a>
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
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="#about-section">About Us</a></li>
                        <li><a href="#new-arrivals"> New Arrivals </a></li>
                        <li><a href="#contact">Contact</a></li>
                        <li class="iconitem"><a href="#" data-toggle="modal" data-target="#login-modal"><i class="fa fa-search"></i></a></li>
                        <li class="iconitem"><a class="shopicon" href="shop-cart.html"><i class="fa fa-shopping-basket"></i> &nbsp;(0)</a></li>
                    </ul>
                </div>
            </nav><!-- end navbar -->
        </div><!-- end container -->
    </header>

    <section id="home" class="video-section js-height-full">
        <video style="position: absolute; object-fit: cover; width: 100%; height: 100%;" preload="none" autoplay muted loop playsinline="true" src="upload/WhatsApp%20Video%202025-01-15%20at%2011.53.14%20PM.mp4"></video>
        <div class="overlay"></div>
        <div class="home-text-wrapper relative container">

            <div class="home-message">

                <p> Welcome to EchoCart</p>
                <small>Your go-to destination for all your favorite brands and more. Shop the best in fashion, tech, home,<br> and beyond—all in one place. Fast, easy, and secure.<br>

                    Start exploring now! 🛍️</small>
                <div class="btn-wrapper">
                    <div class="text-center">
                        <a href="signup.jsp" class="btn btn-primary wow slideInLeft"> Sign Up </a> &nbsp;&nbsp;&nbsp;<a href="login.jsp" class="btn btn-default wow slideInRight"> Log In </a>
                    </div>
                </div><!-- end row -->
            </div>
        </div>
        <div class="slider-bottom">
            <span>Explore <i class="fa fa-angle-down"></i></span>
        </div>

    </section>

    <section class="section " id="about-section">
        <div class="container">
            <div class="row">
                <div class="col-md-4 hidden-sm hidden-xs">
                    <div class="custom-module">
                        <img src="upload/pexels-cottonbro-5076516.jpg" alt="" class="img-responsive wow slideInLeft">
                    </div><!-- end module -->
                </div><!-- end col -->
                <div class="col-md-8">
                    <div class="custom-module p40l">
                        <h2>Welcome to<mark> EchoCart,</mark>  where shopping meets simplicity and style! We’re passionate about bringing you a seamless online shopping experience, offering a curated selection of products from the world’s best brands—all in one place.</h2>

                        <p>Our mission is simple: to make your life easier by providing high-quality items, competitive prices, and exceptional customer service. Whether you’re shopping for fashion, tech, home essentials, or something unique, we’ve got you covered.</p>
                        <hr class="invis">
                        <p>At EchoCart, we believe in more than just transactions—we’re here to build trust, inspire discovery, and make every purchase a delight. Thank you for choosing us as your go-to destination for all your needs.</p>
                        <br>
                        <p>Start exploring now! 🛍️</p>
                        <hr class="invis">

                        <div class="btn-wrapper">
                            <a href="#" class="btn btn-primary">Learn More About us</a>
                        </div>

                    </div><!-- end module -->
                </div><!-- end col -->
            </div><!-- end row -->
        </div><!-- end container -->
    </section>

    <section class="section gb" id="new-arrivals">
        <div class="container">
            <div class="section-title text-center">
                <h3> New Arrivals – Fresh Picks Just for You!</h3>
                <p>Stay ahead of the curve with our latest collection! From trending styles to must-have essentials, our new arrivals are handpicked to bring you the best of what’s hot right now. Explore fresh finds and upgrade your shopping game today!

                    <br>Shop now and be the first to own these exclusive items! 🛍️</p>
            </div><!-- end title -->

            <div id="owl-01" class="owl-carousel owl-theme owl-theme-01">
                <div class="caro-item">
                    <div class="course-box">
                        <div class="image-wrap entry">
                            <img src="upload/pexels-pixabay-163535.jpg" alt="" class="img-responsive">
                            <div class="magnifier">
                                <a href="#" title=""><i class="flaticon-add"></i></a>
                            </div>
                        </div><!-- end image-wrap -->
                        <div class="course-details">
                            <h4>
                                <small>Unisex Shoes</small>
                                <a href="#" title="">Casual Shoes</a>
                            </h4>
                            <p>Upgrade your everyday look with our new collection of casual shoes. From sleek sneakers to comfy slip-ons, these arrivals are all about combining style and ease for your daily adventures.</p>
                        </div><!-- end details -->
                        <div class="course-footer clearfix">
                            <div class="pull-left">
                                <ul class="list-inline">
                                    <li><a href="#"><i class="fa fa-user"></i> 21</a></li>
                                    <%--                                    <li><a href="#"><i class="fa fa-clock-o"></i> 15 Min.</a></li>--%>
                                </ul>
                            </div><!-- end left -->

                            <div class="pull-right">
                                <ul class="list-inline">
                                    <li><a href="#">$49.99</a></li>
                                </ul>
                            </div><!-- end left -->
                        </div><!-- end footer -->
                    </div><!-- end box -->
                </div><!-- end col -->

                <div class="caro-item">
                    <div class="course-box">
                        <div class="image-wrap entry">
                            <img src="upload/pexels-alteredsnaps-16234316.jpg" alt="" class="img-responsive">
                            <div class="magnifier">
                                <a href="#" title=""><i class="flaticon-add"></i></a>
                            </div>
                        </div><!-- end image-wrap -->
                        <div class="course-details">
                            <h4>
                                <small>Women’s Shoes</small>
                                <a href="#" title="">Sandals & Flats</a>
                            </h4>
                            <p>Step into comfort and style with our latest sandals and flats! Perfect for sunny days or casual outings, these fresh designs are lightweight, trendy, and ready to complement your wardrobe. </p>
                        </div><!-- end details -->
                        <div class="course-footer clearfix">
                            <div class="pull-left">
                                <ul class="list-inline">
                                    <li><a href="#"><i class="fa fa-user"></i> 41</a></li>
                                    <%--                                    <li><a href="#"><i class="fa fa-clock-o"></i> 33 Min.</a></li>--%>
                                </ul>
                            </div><!-- end left -->

                            <div class="pull-right">
                                <ul class="list-inline">
                                    <li><a href="#">$29.99</a></li>
                                </ul>
                            </div><!-- end left -->
                        </div><!-- end footer -->
                    </div><!-- end box -->
                </div><!-- end col -->

                <div class="caro-item">
                    <div class="course-box">
                        <div class="image-wrap entry">
                            <img src="upload/pexels-goumbik-293405.jpg" alt="" class="img-responsive">
                            <div class="magnifier">
                                <a href="#" title=""><i class="flaticon-add"></i></a>
                            </div>
                        </div><!-- end image-wrap -->
                        <div class="course-details">
                            <h4>
                                <small>Men’s Shoes</small>
                                <a href="#" title="">Formal Shoes</a>
                            </h4>
                            <p>Make a lasting impression with our latest formal shoes. Whether it’s a business meeting or a special event, these sophisticated designs are crafted to keep you looking sharp and confident.</p>
                        </div><!-- end details -->
                        <div class="course-footer clearfix">
                            <div class="pull-left">
                                <ul class="list-inline">
                                    <li><a href="#"><i class="fa fa-user"></i> 35</a></li>
                                    <%--                                    <li><a href="#"><i class="fa fa-clock-o"></i> 1 Hrs.</a></li>--%>
                                </ul>
                            </div><!-- end left -->

                            <div class="pull-right">
                                <ul class="list-inline">
                                    <li><a href="#">$79.99</a></li>
                                </ul>
                            </div><!-- end left -->
                        </div><!-- end footer -->
                    </div><!-- end box -->
                </div><!-- end col -->

                <div class="caro-item">
                    <div class="course-box">
                        <div class="image-wrap entry">
                            <img src="upload/pexels-pixabay-40737.jpg" alt="" class="img-responsive">
                            <div class="magnifier">
                                <a href="#" title=""><i class="flaticon-add"></i></a>
                            </div>
                        </div><!-- end image-wrap -->
                        <div class="course-details">
                            <h4>
                                <small>Unisex Shoes</small>
                                <a href="#" title="">Sandals & Slippers</a>
                            </h4>
                            <p>Relax in style with our new sandals and slippers! Perfect for lounging at home or stepping out in comfort, these arrivals are all about effortless charm and cozy vibes.</p>
                        </div><!-- end details -->
                        <div class="course-footer clearfix">
                            <div class="pull-left">
                                <ul class="list-inline">
                                    <li><a href="#"><i class="fa fa-user"></i> 35</a></li>
                                    <%--                                    <li><a href="#"><i class="fa fa-clock-o"></i> 45 Min.</a></li>--%>
                                </ul>
                            </div><!-- end left -->

                            <div class="pull-right">
                                <ul class="list-inline">
                                    <li><a href="#">$24.99</a></li>
                                </ul>
                            </div><!-- end left -->
                        </div><!-- end footer -->
                    </div><!-- end box -->
                </div><!-- end col -->

                <div class="caro-item">
                    <div class="course-box">
                        <div class="image-wrap entry">
                            <img src="upload/pexels-danikprihodko-15878510.jpg" alt="" class="img-responsive">
                            <div class="magnifier">
                                <a href="#" title=""><i class="flaticon-add"></i></a>
                            </div>
                        </div><!-- end image-wrap -->
                        <div class="course-details">
                            <h4>
                                <small>Specialty Shoes</small>
                                <a href="#" title="">Seasonal Shoes</a>
                            </h4>
                            <p>Stay ready for every season with our latest collection of seasonal shoes! From cozy winter boots to breezy summer sandals, these arrivals are designed to keep you comfortable and stylish, no matter the weather.</p>
                        </div><!-- end details -->
                        <div class="course-footer clearfix">
                            <div class="pull-left">
                                <ul class="list-inline">
                                    <li><a href="#"><i class="fa fa-user"></i> 21</a></li>
                                    <%--                                    <li><a href="#"><i class="fa fa-clock-o"></i> 15 Min.</a></li>--%>
                                </ul>
                            </div><!-- end left -->

                            <div class="pull-right">
                                <ul class="list-inline">
                                    <li><a href="#">$59.99</a></li>
                                </ul>
                            </div><!-- end left -->
                        </div><!-- end footer -->
                    </div><!-- end box -->
                </div><!-- end col -->
            </div><!-- end row -->

            <hr class="invis">

            <div class="section-button text-center">
                <a href="#" class="btn btn-primary">View All Products</a>
            </div>
        </div><!-- end container -->
    </section>





    <section class="section db">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4">
                    <div class="stat-count">
                        <h4 class="stat-timer">1230</h4>
                        <h3><i class="flaticon-black-graduation-cap-tool-of-university-student-for-head"></i> Happy Customers</h3>
                        <p>“Such a smooth shopping experience! I found exactly what I was looking for, and the quality is amazing.”</p>
                    </div><!-- stat-count -->
                </div><!-- end col -->

                <div class="col-lg-4 col-md-4">
                    <div class="stat-count">
                        <h4 class="stat-timer">33268</h4>
                        <h3><i class="flaticon-online-course"></i>  Sold </h3>
                        <p>Don’t miss out—shop now before they’re gone! </p>
                    </div><!-- stat-count -->
                </div><!-- end col -->

                <div class="col-lg-4 col-md-4">
                    <div class="stat-count">
                        <h4 class="stat-timer">8901</h4>
                        <h3><i class="flaticon-coffee-cup"></i> Processed Orders</h3>
                        <p>Your order has been successfully placed and is now being processed. </p>
                    </div><!-- stat-count -->
                </div><!-- end col -->
            </div><!-- end row -->
        </div><!-- end container -->
    </section>


    <section class="section bgcolor1">
        <div class="container">
            <a href="#">
                <div class="row callout">
                    <div class="col-md-4 text-center">
                        <h3>20<sup>% off</sup></h3>
                        <h4>Put your awesome Orders today!</h4>
                    </div><!-- end col -->

                    <div class="col-md-8">
                        <p class="lead">Limited time offer! Shop now and grab your favorites before they’re gone.<br>" Deals this good won’t last long!
                            " </p>
                    </div>
                </div><!-- end row -->
            </a>
        </div><!-- end container -->
    </section>

    <footer class="section footer noover" id="contact">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="small-box">
                        <i class="fa-regular fa-envelope-open"></i>
                        <h4 style="color: #82b440">Contact us today</h4>
                        <small>Phone: +90 987 665 55 44</small>
                        <small>Fax:  +90 987 665 55 45</small>
                        <p><a href="mail:to">info@EchoCart.com</a></p>
                    </div><!-- end small-box -->
                </div><!-- end col -->

                <div class="col-md-4">
                    <div class="small-box">
                        <i class="fa-regular fa-map"></i>
                        <h4 style="color: #82b440">Visit Our Office</h4>
                        <small>PO Box 16122 Collins Street West</small>
                        <small>Victoria 8007 Australia</small>
                        <p><a href="#">View on Google Map</a></p>
                    </div><!-- end small-box -->
                </div><!-- end col -->

                <div class="col-md-4">
                    <div class="small-box">
                        <i class="fa-regular fa-share-from-square"></i>
                        <h4 style="color: #82b440">Be Social</h4>
                        <small>Twitter: @yourhandle</small>
                        <small>Facebook: facebook.com/yourhandle</small>
                        <p><a href="#">Email Newsletter</a></p>
                    </div><!-- end small-box -->
                </div><!-- end col -->

                <%--                <div class="col-lg-2 col-md-2">--%>
                <%--                    <div class="widget clearfix">--%>
                <%--                        <h3 class="widget-title">Support</h3>--%>
                <%--                        <div class="list-widget">--%>
                <%--                            <ul>--%>
                <%--                                <li><a href="#">Terms of Use</a></li>--%>
                <%--                                <li><a href="#">Copyrights</a></li>--%>
                <%--                                <li><a href="#">Create a Ticket</a></li>--%>
                <%--                                <li><a href="#">Pricing & Plans</a></li>--%>
                <%--                                <li><a href="#">Carrier</a></li>--%>
                <%--                                <li><a href="#">Trademark</a></li>--%>
                <%--                            </ul>--%>
                <%--                        </div><!-- end list-widget -->--%>
                <%--                    </div><!-- end widget -->--%>
                <%--                </div><!-- end col -->--%>
            </div><!-- end row -->
        </div><!-- end container -->
    </footer><!-- end footer -->

    <div class="copyrights">
        <div class="container">
            <div class="clearfix">
                <div class="pull-left">
                    <div class="cop-logo">
                        <a style="display: flex" class="navbar-brand" href="index.jsp"><img src="images/apple-touch-icon.png" alt=""><h2 style="color: white">EchoCart</h2></a>
                    </div>
                </div>

                <div class="pull-right">
                    <div class="footer-links">
                        <ul class="list-inline">
                            <li>Design : <a href="https://html.design">HTML.Design</a></li>
                            <li>Distributed by : <a href="https://themewagon.com/" target="_blank">ThemeWagon</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div><!-- end container -->
    </div><!-- end copy -->
</div><!-- end wrapper -->

<!-- jQuery Files -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/carousel.js"></script>
<script src="js/animate.js"></script>
<script src="js/custom.js"></script>
<!-- VIDEO BG PLUGINS -->

<%--<script src="js/videobg.js"></script>--%>

</body>
</html>