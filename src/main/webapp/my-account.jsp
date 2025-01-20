<%--
  Created by IntelliJ IDEA.
  User: dilini
  Date: 1/21/25
  Time: 12:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Oreder</title>
</head>
<body>
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
                        <a style="display: flex" class="navbar-brand" href="loginHome.jsp"><img src="images/apple-touch-icon.png" alt=""><h2 style="color: white">EchoCart</h2></a>
                    </div>
                </div>

                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="loginHome.jsp">Home</a></li>
                        <li class="dropdown hassubmenu">
                        <li class="dropdown hassubmenu">
                            <a href="shoes-collection.jsp" class="dropdown-toggle" data-toggle="dropdown" role="button"
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
                            <a href="brands.jsp" class="dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-expanded="false">Brands <span class="fa fa-angle-down"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="brands.jsp#nike">Nike</a></li>
                                <li><a href="brands.jsp#adidas">Adidas</a></li>
                                <li><a href="brands.jsp#asics">Asics</a></li>
                                <li><a href="brands.jsp#avi">AVI</a></li>
                                <li><a href="brands.jsp#hoka">Hoka</a></li>
                            </ul>
                        </li>
                        <li class="iconitem"><a class="shopicon" href="cart.jsp"><i class="fa fa-shopping-basket"></i> Cart</a></li>
                        <li><a href="my-account.jsp">My Account</a></li>
                        <li class="iconitem"><a href="#" data-toggle="modal" data-target="#login-modal"><i class="fa fa-search"></i>Search</a></li>
                    </ul>
                </div>
            </nav><!-- end navbar -->
        </div><!-- end container -->
    </header>



</div>
</body>
</html>
