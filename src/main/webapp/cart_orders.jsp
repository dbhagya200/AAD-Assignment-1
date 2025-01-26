<%--
  Created by IntelliJ IDEA.
  User: dilini
  Date: 1/25/25
  Time: 2:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add to Cart</title>
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

    <style>
        input{
            margin-top: 12px;
        }
        .form-control{
            height: 40px;
        }
    </style>
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
                        <a style="display: flex" class="navbar-brand" href="loginHome.jsp">
                            <img src="images/apple-touch-icon.png" alt=""><h2 style="color: white">EchoCart</h2></a>
                    </div>
                </div>

                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="loginHome.jsp">Home</a></li>
                        <li><a href="product.jsp">Products</a></li>
                        <li><a href="cart_orders.jsp"><i class="fa fa-shopping-basket"></i>Cart</a></li>
                        <li class="dropdown hassubmenu">
                            <a href="my_account.jsp" class="dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-expanded="false">My Account <span class="fa fa-angle-down"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="">Profile</a></li>
                                <li><a href="logout">Logout</a></li>
                            </ul>
                        </li>
                        <li class="iconitem"><a href="#" data-toggle="modal" data-target="#login-modal"><i class="fa fa-search"></i>Search</a></li>
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

                <section class="section gb" id="new-arrivals" style="padding: 10px;backface-visibility: hidden;
                overflow-x: hidden; margin-top: 80px;height: 350px; background-color: dimgrey;border-radius: 10px" >



                    <section  class="recipes" style="margin-top: 20px">
                        <div class="container mt-5" style="height: 40px">
                            <div class="container justify-content-between d-flex" style="font-family: 'Droid Serif', sans-serif;">
                                <h2 class="mt-3">Cart Details</h2>

                            </div>

                            <div class="row gx-3 order-section">
                                <div class="col-lg-8 mb-3">
                                    <div class="card h-100">
                                        <div class="card-body">

                                            <div class="row g-3 mb-3">
                                                <div class="col-md-6 " >
                                                    <input  type="text" class="form-control" placeholder="Order ID" aria-label="Order ID" id="orderId">
                                                </div>
                                                <div class="col-md-6" >
                                                    <input  type="text" class="form-control" placeholder="Order Date" aria-label="Order Date" id="orderDate">
                                                </div>
                                            </div>


                                            <div class="row g-3 mb-3">
<%--                                                <select class="form-select form-select-sm" aria-label="Small select example" id="cusId" >--%>
<%--                                                    <option selected>Select Customer Id</option>--%>
<%--                                                </select>--%>

                                                <div class="col-md-6">
                                                    <input type="text" class="form-control" placeholder="customer Name" aria-label="Item Name" id="cusName">
                                                </div>


                                            </div>

                                            <div class="row g-3 mb-3">
                                                <!--  <div class="col-md-6">
                                                      <input type="text" class="form-control" placeholder="Item Code" aria-label="Item Code" id="itCode">
                                                  </div>-->
<%--                                                <select class="form-select form-select-sm" aria-label="Small select example" id="itCode" >--%>
<%--                                                    <option selected>Select item code</option>--%>
<%--                                                </select>--%>

                                                <div class="col-md-6">
                                                    <input type="text" class="form-control" placeholder="Item Name" aria-label="Item Name" id="itName">
                                                </div>
                                            </div>


                                            <div class="row g-3">
                                                <div class="col-md-4">
                                                    <input type="text" class="form-control" placeholder="Unit Price" aria-label="Unit Price" id="uPrice">
                                                </div>
                                                <div class="col-md-4">
                                                    <input type="text" class="form-control" placeholder="Qty On Hand" aria-label="Qty On Hand" id="qtyOnHand1">
                                                </div>
                                                <div class="col-md-4">
                                                    <input type="text" class="form-control" placeholder="Qty" aria-label="Qty" id="qty">
                                                </div>
                                            </div>
<%--                                            <div class="d-flex justify-content-end mt-3">--%>
<%--                                                <button type="button" class="btn btn-primary" id="addToCart">Add to Cart</button>--%>
<%--                                            </div>--%>
                                        </div>
                                    </div>
                                </div>


                                <div class="col-lg-4 mb-3">
                                    <div class="card h-100">
                                        <div class="card-body">

                                            <div class="row g-3 mb-3">
                                                <div class="col-md-6">
                                                    <input type="text" class="form-control" placeholder="Total" aria-label="Total" id="netTotal">
                                                </div>

                                            </div>
                                            <div class="d-flex justify-content-center">
                                                <button style="margin-top: 60px" type="button" class="btn btn-success" id="purchase">Purchase</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


<%--                            <div class="table-responsive" id="table place">--%>
<%--                                <table class="table table-striped text-center">--%>
<%--                                    <thead>--%>
<%--                                    <tr>--%>
<%--                                        <th scope="col">Item Code</th>--%>
<%--                                        <th scope="col">Description</th>--%>
<%--                                        <th scope="col">Price</th>--%>
<%--                                        <th scope="col">Qty</th>--%>
<%--                                        <th scope="col">Total</th>--%>
<%--                                    </tr>--%>
<%--                                    </thead>--%>
<%--                                    <tbody id="orderTableBody">--%>

<%--                                    </tbody>--%>
<%--                                </table>--%>
<%--                            </div>--%>


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
