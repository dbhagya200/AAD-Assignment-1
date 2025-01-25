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
                        <a style="display: flex" class="navbar-brand" href="loginHome.jsp"><img src="images/apple-touch-icon.png" alt=""><h2 style="color: white">EchoCart</h2></a>
                    </div>
                </div>

                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="loginHome.jsp">Home</a></li>
                        <li class="dropdown hassubmenu">
                        <li class="dropdown hassubmenu">
                            <a href="shoes_collection.jsp" class="dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-expanded="false"> Shoes-Collection-Categories
                                <span class="fa fa-angle-down"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="shoes_collection.jsp#s-main"> Sports Shoes Collection </a></li>
                                <li><a href="shoes_collection.jsp#training">Training Shoes</a></li>
                                <li><a href="shoes_collection.jsp#soccer">Soccer Shoes</a></li>
                                <li><a href="shoes_collection.jsp#basket">BasketBall Shoes</a></li>
                                <li><a href="shoes_collection.jsp#spikes">Spikes Shoes</a></li>
                                <li><a href="shoes_collection.jsp#cricket">Cricket Shoes</a></li>

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
                        <li><a href="my_account.jsp">My Account</a></li>
                        <li class="iconitem"><a href="#" data-toggle="modal" data-target="#login-modal"><i class="fa fa-search"></i>Search</a></li>
                    </ul>
                </div>
            </nav><!-- end navbar -->
        </div><!-- end container -->
    </header>

    <section id="home" class="video-section js-height-full" style="background-color: #2c2f33">

        <div class="home-text-wrapper relative container" >
            <div class="home-message"  >

                <section class="section gb main-c " id="nike"  style="padding: 0px;backface-visibility: hidden;overflow-x: hidden; background: unset" >
                    <h1 style="color: white;text-align: start;margin-left: 20px;
                    margin-top: 200px">Nike Shoes Collection</h1>
                    <section  class="recipes">
                        <div class="image-gallery">
                            <div class="recipe-card">
                                <img src="upload/nike/soccer-1.jpeg" class="card-img-top" alt="Product Image">
                                <div class="description">
                                    <h5 class="card-title">Nike Vapor Edge Elite 360 2

                                    </h5>
                                    <p class="card-text">Product: NIKE</p>
                                    <p class="card-text">Price: LKR25,999.00</p>
                                    <div class="input-group input-group-sm mb-3" style="float: unset">
                                        <span class="input-group-text" style="color:darkslategrey" >Quantity</span>
                                        <input type="number" class="form-control" aria-label="Sizing example input"
                                               aria-describedby="inputGroup-sizing-sm" value="1" style="width: 60%;margin-left: 10px">
                                        <button class="btn btn-success" style="margin: 10px; border-radius: 5px;">Add to Cart</button>
                                    </div>
                                </div>
                            </div>

                            <div class="recipe-card">
                                <img src="upload/nike/soccer-2.jpeg" class="card-img-top" alt="Product Image">
                                <div class="description">
                                    <h5 class="card-title">Nike Vapor Edge 360 "Untouchable"

                                    </h5>
                                    <p class="card-text">Product: NIKE</p>
                                    <p class="card-text">Price: LKR47,999.00</p>
                                    <div class="input-group input-group-sm mb-3" style="float: unset">
                                        <span class="input-group-text" style="color:darkslategrey" >Quantity</span>
                                        <input type="number" class="form-control" aria-label="Sizing example input"
                                               aria-describedby="inputGroup-sizing-sm" value="1" style="width: 60%;margin-left: 10px">
                                        <button class="btn btn-success" style="margin: 10px; border-radius: 5px;">Add to Cart</button>
                                    </div>
                                </div>
                            </div>

                            <div class="recipe-card">
                                <img src="upload/nike/soccer-3.jpeg" class="card-img-top" alt="Product Image">
                                <div class="description">
                                    <h5 class="card-title">Nike Alpha Menace 4 Elite "Travis Kelce"

                                    </h5>
                                    <p class="card-text">Product: NIKE</p>
                                    <p class="card-text">Price: LKR57,999.00</p>
                                    <div class="input-group input-group-sm mb-3" style="float: unset">
                                        <span class="input-group-text" style="color:darkslategrey" >Quantity</span>
                                        <input type="number" class="form-control" aria-label="Sizing example input"
                                               aria-describedby="inputGroup-sizing-sm" value="1" style="width: 60%;margin-left: 10px">
                                        <button class="btn btn-success" style="margin: 10px; border-radius: 5px;">Add to Cart</button>
                                    </div>
                                </div>
                            </div>




                        </div>
                    </section>

                    <section  class="recipes">
                        <div class="image-gallery">
                            <div class="recipe-card">
                                <img src="upload/nike/soccer-4.jpeg" class="card-img-top" alt="Product Image">
                                <div class="description">
                                    <h5 class="card-title">Jordan 1 Low

                                    </h5>
                                    <p class="card-text">Product: NIKE</p>
                                    <p class="card-text">Price: LKR18,999.00</p>
                                    <div class="input-group input-group-sm mb-3" style="float: unset">
                                        <span class="input-group-text" style="color:darkslategrey" >Quantity</span>
                                        <input type="number" class="form-control" aria-label="Sizing example input"
                                               aria-describedby="inputGroup-sizing-sm" value="1" style="width: 60%;margin-left: 10px">
                                        <button class="btn btn-success" style="margin: 10px; border-radius: 5px;">Add to Cart</button>
                                    </div>
                                </div>
                            </div>

                            <div class="recipe-card">
                                <img src="upload/nike/basket-1.jpeg" class="card-img-top" alt="Product Image">
                                <div class="description">
                                    <h5 class="card-title">Nike Basketball Shoes Tatum 3

                                    </h5>
                                    <p class="card-text">Product: NIKE</p>
                                    <p class="card-text">Price: LKR16,499.00</p>
                                    <div class="input-group input-group-sm mb-3" style="float: unset">
                                        <span class="input-group-text" style="color:darkslategrey" >Quantity</span>
                                        <input type="number" class="form-control" aria-label="Sizing example input"
                                               aria-describedby="inputGroup-sizing-sm" value="1" style="width: 60%;margin-left: 10px">
                                        <button class="btn btn-success" style="margin: 10px; border-radius: 5px;">Add to Cart</button>
                                    </div>
                                </div>
                            </div>

                            <div class="recipe-card">
                                <img src="upload/nike/basket-1.jpeg" class="card-img-top" alt="Product Image">
                                <div class="description">
                                    <h5 class="card-title">Nike LeBron NXXT Gen AMPD Basketball Shoes

                                    </h5>
                                    <p class="card-text">Product: NIKE</p>
                                    <p class="card-text">Price:  LKR35,999.00</p>
                                    <div class="input-group input-group-sm mb-3" style="float: unset">
                                        <span class="input-group-text" style="color:darkslategrey" >Quantity</span>
                                        <input type="number" class="form-control" aria-label="Sizing example input"
                                               aria-describedby="inputGroup-sizing-sm" value="1" style="width: 60%;margin-left: 10px">
                                        <button class="btn btn-success" style="margin: 10px; border-radius: 5px;">Add to Cart</button>
                                    </div>
                                </div>
                            </div>




                        </div>
                    </section>

                    <section  class="recipes">
                        <div class="image-gallery">
                            <div class="recipe-card">
                                <img src="upload/nike/spike-1.jpeg" class="card-img-top" alt="Product Image">
                                <div class="description">
                                    <h5 class="card-title">Nike Maxfly 2

                                    </h5>
                                    <p class="card-text">Product: NIKE</p>
                                    <p class="card-text">Price: LKR58,499.00</p>
                                    <div class="input-group input-group-sm mb-3" style="float: unset">
                                        <span class="input-group-text" style="color:darkslategrey" >Quantity</span>
                                        <input type="number" class="form-control" aria-label="Sizing example input"
                                               aria-describedby="inputGroup-sizing-sm" value="1" style="width: 60%;margin-left: 10px">
                                        <button class="btn btn-success" style="margin: 10px; border-radius: 5px;">Add to Cart</button>
                                    </div>
                                </div>
                            </div>

                            <div class="recipe-card">
                                <img src="upload/nike/spike-2.jpeg" class="card-img-top" alt="Product Image">
                                <div class="description">
                                    <h5 class="card-title">Nike Zoom Rival

                                    </h5>
                                    <p class="card-text">Product: NIKE</p>
                                    <p class="card-text">Price: LKR50,499.00</p>
                                    <div class="input-group input-group-sm mb-3" style="float: unset">
                                        <span class="input-group-text" style="color:darkslategrey" >Quantity</span>
                                        <input type="number" class="form-control" aria-label="Sizing example input"
                                               aria-describedby="inputGroup-sizing-sm" value="1" style="width: 60%;margin-left: 10px">
                                        <button class="btn btn-success" style="margin: 10px; border-radius: 5px;">Add to Cart</button>
                                    </div>
                                </div>
                            </div>

                            <div class="recipe-card">
                                <img src="upload/nike/spike-3.jpeg" class="card-img-top" alt="Product Image">
                                <div class="description">
                                    <h5 class="card-title">Nike Ja Fly 4

                                    </h5>
                                    <p class="card-text">Product: NIKE</p>
                                    <p class="card-text">Price:  LKR45,999.00</p>
                                    <div class="input-group input-group-sm mb-3" style="float: unset">
                                        <span class="input-group-text" style="color:darkslategrey" >Quantity</span>
                                        <input type="number" class="form-control" aria-label="Sizing example input"
                                               aria-describedby="inputGroup-sizing-sm" value="1" style="width: 60%;margin-left: 10px">
                                        <button class="btn btn-success" style="margin: 10px; border-radius: 5px;">Add to Cart</button>
                                    </div>
                                </div>
                            </div>




                        </div>
                    </section>

                    <section  class="recipes">
                        <div class="image-gallery">
                            <div class="recipe-card">
                                <img src="upload/nike/cricket-1.jpeg" class="card-img-top" alt="Product Image">
                                <div class="description">
                                    <h5 class="card-title">Nike Zoom Rival

                                    </h5>
                                    <p class="card-text">Product: NIKE</p>
                                    <p class="card-text">Price:  LKR22,999.00</p>
                                    <div class="input-group input-group-sm mb-3" style="float: unset">
                                        <span class="input-group-text" style="color:darkslategrey" >Quantity</span>
                                        <input type="number" class="form-control" aria-label="Sizing example input"
                                               aria-describedby="inputGroup-sizing-sm" value="1" style="width: 60%;margin-left: 10px">
                                        <button class="btn btn-success" style="margin: 10px; border-radius: 5px;">Add to Cart</button>
                                    </div>
                                </div>
                            </div>

                            <div class="recipe-card">
                                <img src="upload/nike/cricket-2.jpeg" class="card-img-top" alt="Product Image">
                                <div class="description">
                                    <h5 class="card-title">Nike Rival Jump

                                    </h5>
                                    <p class="card-text">Product: NIKE</p>
                                    <p class="card-text">Price: LKR22,299.00</p>
                                    <div class="input-group input-group-sm mb-3" style="float: unset">
                                        <span class="input-group-text" style="color:darkslategrey" >Quantity</span>
                                        <input type="number" class="form-control" aria-label="Sizing example input"
                                               aria-describedby="inputGroup-sizing-sm" value="1" style="width: 60%;margin-left: 10px">
                                        <button class="btn btn-success" style="margin: 10px; border-radius: 5px;">Add to Cart</button>
                                    </div>
                                </div>
                            </div>




                        </div>
                    </section>


                </section>


                <section class="section gb main-c " id="adidas"  style="padding: 0px;backface-visibility: hidden;overflow-x: hidden; background: unset" >
                    <h1 style="color: white;text-align: start;margin-left: 20px;
                    margin-top: 200px">Adidas Shoes Collection</h1>
                    <section  class="recipes">
                        <div class="image-gallery">
                            <div class="recipe-card">
                                <img src="upload/adidas/training-1.jpeg" class="card-img-top" alt="Product Image">
                                <div class="description">
                                    <h5 class="card-title"> Supernova Prima Running Shoes - SS25

                                    </h5>
                                    <p class="card-text">Product: ADIDAS </p>
                                    <p class="card-text">Price: LKR10,499.00</p>
                                    <div class="input-group input-group-sm mb-3" style="float: unset">
                                        <span class="input-group-text" style="color:darkslategrey" >Quantity</span>
                                        <input type="number" class="form-control" aria-label="Sizing example input"
                                               aria-describedby="inputGroup-sizing-sm" value="1" style="width: 60%;margin-left: 10px">
                                        <button class="btn btn-success" style="margin: 10px; border-radius: 5px;">Add to Cart</button>
                                    </div>
                                </div>
                            </div>

                            <div class="recipe-card">
                                <img src="upload/adidas/training-2.jpeg" class="card-img-top" alt="Product Image">
                                <div class="description">
                                    <h5 class="card-title">adidas Adizero Adios Pro 4 Running Shoes - SS25

                                    </h5>
                                    <p class="card-text">Product: ADIDAS</p>
                                    <p class="card-text">Price: LKR42,999.00</p>
                                    <div class="input-group input-group-sm mb-3" style="float: unset">
                                        <span class="input-group-text" style="color:darkslategrey" >Quantity</span>
                                        <input type="number" class="form-control" aria-label="Sizing example input"
                                               aria-describedby="inputGroup-sizing-sm" value="1" style="width: 60%;margin-left: 10px">
                                        <button class="btn btn-success" style="margin: 10px; border-radius: 5px;">Add to Cart</button>
                                    </div>
                                </div>
                            </div>

                            <div class="recipe-card">
                                <img src="upload/adidas/basket-1.jpeg" class="card-img-top" alt="Product Image">
                                <div class="description">
                                    <h5 class="card-title">adidas Anthony Edwards 1 Low Basketball Shoes

                                    </h5>
                                    <p class="card-text">Product: ADIDAS</p>
                                    <p class="card-text">Price: LKR53,499.00</p>
                                    <div class="input-group input-group-sm mb-3" style="float: unset">
                                        <span class="input-group-text" style="color:darkslategrey" >Quantity</span>
                                        <input type="number" class="form-control" aria-label="Sizing example input"
                                               aria-describedby="inputGroup-sizing-sm" value="1" style="width: 60%;margin-left: 10px">
                                        <button class="btn btn-success" style="margin: 10px; border-radius: 5px;">Add to Cart</button>
                                    </div>
                                </div>
                            </div>




                        </div>
                    </section>

                    <section  class="recipes">
                        <div class="image-gallery">

                            <div class="recipe-card">
                                <img src="upload/adidas/basket-2.jpeg" class="card-img-top" alt="Product Image">
                                <div class="description">
                                    <h5 class="card-title"> adidas Originals Crazy Iiinfinity Basketball Shoes

                                    </h5>
                                    <p class="card-text">Product: ADIDAS</p>
                                    <p class="card-text">Price: LKR48,499.00</p>
                                    <div class="input-group input-group-sm mb-3" style="float: unset">
                                        <span class="input-group-text" style="color:darkslategrey" >Quantity</span>
                                        <input type="number" class="form-control" aria-label="Sizing example input"
                                               aria-describedby="inputGroup-sizing-sm" value="1" style="width: 60%;margin-left: 10px">
                                        <button class="btn btn-success" style="margin: 10px; border-radius: 5px;">Add to Cart</button>
                                    </div>
                                </div>
                            </div>

                            <div class="recipe-card">
                                <img src="upload/adidas/spike-1.jpeg" class="card-img-top" alt="Product Image">
                                <div class="description">
                                    <h5 class="card-title">adidas Adipower Vector Spikes

                                    </h5>
                                    <p class="card-text">Product: ADIDAS</p>
                                    <p class="card-text">Price:  LKR35,999.00</p>
                                    <div class="input-group input-group-sm mb-3" style="float: unset">
                                        <span class="input-group-text" style="color:darkslategrey" >Quantity</span>
                                        <input type="number" class="form-control" aria-label="Sizing example input"
                                               aria-describedby="inputGroup-sizing-sm" value="1" style="width: 60%;margin-left: 10px">
                                        <button class="btn btn-success" style="margin: 10px; border-radius: 5px;">Add to Cart</button>
                                    </div>
                                </div>
                            </div>

                            <div class="recipe-card">
                                <img src="upload/adidas/cricket-1.jpeg" class="card-img-top" alt="Product Image">
                                <div class="description">
                                    <h5 class="card-title">adidas Adizero Boost SL22 Cricket Spikes - AW24

                                    </h5>
                                    <p class="card-text">Product: ADIDAS</p>
                                    <p class="card-text">Price: LKR18,299.00</p>
                                    <div class="input-group input-group-sm mb-3" style="float: unset">
                                        <span class="input-group-text" style="color:darkslategrey" >Quantity</span>
                                        <input type="number" class="form-control" aria-label="Sizing example input"
                                               aria-describedby="inputGroup-sizing-sm" value="1" style="width: 60%;margin-left: 10px">
                                        <button class="btn btn-success" style="margin: 10px; border-radius: 5px;">Add to Cart</button>
                                    </div>
                                </div>
                            </div>



                        </div>
                    </section>

                    <section  class="recipes">
                        <div class="image-gallery">
                            <div class="recipe-card">
                                <img src="upload/adidas/cricket-2.jpeg" class="card-img-top" alt="Product Image">
                                <div class="description">
                                    <h5 class="card-title">adidas Adipower Vector Cricket Spikes

                                    </h5>
                                    <p class="card-text">Product: ADIDAS</p>
                                    <p class="card-text">Price: LKR15,499.00</p>
                                    <div class="input-group input-group-sm mb-3" style="float: unset">
                                        <span class="input-group-text" style="color:darkslategrey" >Quantity</span>
                                        <input type="number" class="form-control" aria-label="Sizing example input"
                                               aria-describedby="inputGroup-sizing-sm" value="1" style="width: 60%;margin-left: 10px">
                                        <button class="btn btn-success" style="margin: 10px; border-radius: 5px;">Add to Cart</button>
                                    </div>
                                </div>
                            </div>






                        </div>
                    </section>


                </section>


                <section class="section gb main-c " id="asics"  style="padding: 0px;backface-visibility: hidden;overflow-x: hidden; background: unset" >
                    <h1 style="color: white;text-align: start;margin-left: 20px;
                    margin-top: 200px">Asics Shoes Collection</h1>
                    <section  class="recipes">
                        <div class="image-gallery">
                            <div class="recipe-card">
                                <img src="upload/asics/training-1.jpeg" class="card-img-top" alt="Product Image">
                                <div class="description">
                                    <h5 class="card-title">Asics Gel-Nimbus 27 Running Shoes - SS25

                                    </h5>
                                    <p class="card-text">Product: ASICS</p>
                                    <p class="card-text">Price: LKR23,050.00</p>
                                    <div class="input-group input-group-sm mb-3" style="float: unset">
                                        <span class="input-group-text" style="color:darkslategrey" >Quantity</span>
                                        <input type="number" class="form-control" aria-label="Sizing example input"
                                               aria-describedby="inputGroup-sizing-sm" value="1" style="width: 60%;margin-left: 10px">
                                        <button class="btn btn-success" style="margin: 10px; border-radius: 5px;">Add to Cart</button>
                                    </div>
                                </div>
                            </div>

                            <div class="recipe-card">
                                <img src="upload/asics/training-1.jpeg" class="card-img-top" alt="Product Image">
                                <div class="description">
                                    <h5 class="card-title">Asics Novablast 5 Running Shoes - SS25

                                    </h5>
                                    <p class="card-text">Product: ASICS</p>
                                    <p class="card-text">Price: LKR25,050.00</p>
                                    <div class="input-group input-group-sm mb-3" style="float: unset">
                                        <span class="input-group-text" style="color:darkslategrey" >Quantity</span>
                                        <input type="number" class="form-control" aria-label="Sizing example input"
                                               aria-describedby="inputGroup-sizing-sm" value="1" style="width: 60%;margin-left: 10px">
                                        <button class="btn btn-success" style="margin: 10px; border-radius: 5px;">Add to Cart</button>
                                    </div>
                                </div>
                            </div>






                        </div>
                    </section>

                    <section  class="recipes">
                        <div class="image-gallery">





                        </div>
                    </section>


                </section>

                <section class="section gb main-c " id="avi"  style="padding: 0px;backface-visibility: hidden;overflow-x: hidden; background: unset" >
                    <h1 style="color: white;text-align: start;margin-left: 20px;
                    margin-top: 200px">Avi Shoes Collection</h1>
                    <section  class="recipes">
                        <div class="image-gallery">
                            <div class="recipe-card">
                                <img src="upload/avi/training-1.jpeg" class="card-img-top" alt="Product Image">
                                <div class="description">
                                    <h5 class="card-title">AVI Men Casual Lacing Shoes WHITE
                                    </h5>
                                    <p class="card-text">Product: AVI</p>
                                    <p class="card-text">LKR10,999.00</p>
                                    <div class="input-group input-group-sm mb-3" style="float: unset">
                                        <span class="input-group-text" style="color:darkslategrey" >Quantity</span>
                                        <input type="number" class="form-control" aria-label="Sizing example input"
                                               aria-describedby="inputGroup-sizing-sm" value="1" style="width: 60%;margin-left: 10px">
                                        <button class="btn btn-success" style="margin: 10px; border-radius: 5px;">Add to Cart</button>
                                    </div>
                                </div>
                            </div>

                            <div class="recipe-card">
                                <img src="upload/avi/training-2.jpeg" class="card-img-top" alt="Product Image">
                                <div class="description">
                                    <h5 class="card-title">AVI Unisex Shoes Sky Blue/Yellow

                                    </h5>
                                    <p class="card-text">Product: AVI</p>
                                    <p class="card-text">Price: LKR8,749.00</p>
                                    <div class="input-group input-group-sm mb-3" style="float: unset">
                                        <span class="input-group-text" style="color:darkslategrey" >Quantity</span>
                                        <input type="number" class="form-control" aria-label="Sizing example input"
                                               aria-describedby="inputGroup-sizing-sm" value="1" style="width: 60%;margin-left: 10px">
                                        <button class="btn btn-success" style="margin: 10px; border-radius: 5px;">Add to Cart</button>
                                    </div>
                                </div>
                            </div>

                            <div class="recipe-card">
                                <img src="upload/avi/soccer-1.jpeg" class="card-img-top" alt="Product Image">
                                <div class="description">
                                    <h5 class="card-title">AVI Unisex Football Boot White/Gold

                                    </h5>
                                    <p class="card-text">Product: AVI</p>
                                    <p class="card-text">Price: LKR2,999.00</p>
                                    <div class="input-group input-group-sm mb-3" style="float: unset">
                                        <span class="input-group-text" style="color:darkslategrey" >Quantity</span>
                                        <input type="number" class="form-control" aria-label="Sizing example input"
                                               aria-describedby="inputGroup-sizing-sm" value="1" style="width: 60%;margin-left: 10px">
                                        <button class="btn btn-success" style="margin: 10px; border-radius: 5px;">Add to Cart</button>
                                    </div>
                                </div>
                            </div>



                        </div>
                    </section>

                    <section  class="recipes">
                        <div class="image-gallery">

                            <div class="recipe-card">
                                <img src="upload/avi/soccer-2.jpeg" class="card-img-top" alt="Product Image">
                                <div class="description">
                                    <h5 class="card-title">AVI unisex soccer aqua blue/ink blue

                                    </h5>
                                    <p class="card-text">Product: AVI</p>
                                    <p class="card-text">Price: LKR6,999.00</p>
                                    <div class="input-group input-group-sm mb-3" style="float: unset">
                                        <span class="input-group-text" style="color:darkslategrey" >Quantity</span>
                                        <input type="number" class="form-control" aria-label="Sizing example input"
                                               aria-describedby="inputGroup-sizing-sm" value="1" style="width: 60%;margin-left: 10px">
                                        <button class="btn btn-success" style="margin: 10px; border-radius: 5px;">Add to Cart</button>
                                    </div>
                                </div>
                            </div>

                            <div class="recipe-card">
                                <img src="upload/avi/basket-2.jpeg" class="card-img-top" alt="Product Image">
                                <div class="description">
                                    <h5 class="card-title">AVI Basketball Shoes BLACK

                                    </h5>
                                    <p class="card-text">Product: AVI</p>
                                    <p class="card-text">Price: LKR10,499.00</p>
                                    <div class="input-group input-group-sm mb-3" style="float: unset">
                                        <span class="input-group-text" style="color:darkslategrey" >Quantity</span>
                                        <input type="number" class="form-control" aria-label="Sizing example input"
                                               aria-describedby="inputGroup-sizing-sm" value="1" style="width: 60%;margin-left: 10px">
                                        <button class="btn btn-success" style="margin: 10px; border-radius: 5px;">Add to Cart</button>
                                    </div>
                                </div>
                            </div>

                            <div class="recipe-card">
                                <img src="upload/avi/basket-1.jpeg" class="card-img-top" alt="Product Image">
                                <div class="description">
                                    <h5 class="card-title">AVI Basketball Low Cut Shoes Black/Purple

                                    </h5>
                                    <p class="card-text">Product: AVI</p>
                                    <p class="card-text">Price:  LKR15,999.00</p>
                                    <div class="input-group input-group-sm mb-3" style="float: unset">
                                        <span class="input-group-text" style="color:darkslategrey" >Quantity</span>
                                        <input type="number" class="form-control" aria-label="Sizing example input"
                                               aria-describedby="inputGroup-sizing-sm" value="1" style="width: 60%;margin-left: 10px">
                                        <button class="btn btn-success" style="margin: 10px; border-radius: 5px;">Add to Cart</button>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </section>

                    <section  class="recipes">
                        <div class="image-gallery">
                            <div class="recipe-card">
                                <img src="upload/avi/spike-1.jpeg" class="card-img-top" alt="Product Image">
                                <div class="description">
                                    <h5 class="card-title">AVI Unisex Spike Shoes LI/Blue

                                    </h5>
                                    <p class="card-text">Product: AVI</p>
                                    <p class="card-text">Price: LKR3,299.00</p>
                                    <div class="input-group input-group-sm mb-3" style="float: unset">
                                        <span class="input-group-text" style="color:darkslategrey" >Quantity</span>
                                        <input type="number" class="form-control" aria-label="Sizing example input"
                                               aria-describedby="inputGroup-sizing-sm" value="1" style="width: 60%;margin-left: 10px">
                                        <button class="btn btn-success" style="margin: 10px; border-radius: 5px;">Add to Cart</button>
                                    </div>
                                </div>
                            </div>

                            <div class="recipe-card">
                                <img src="upload/avi/spike-2.jpeg" class="card-img-top" alt="Product Image">
                                <div class="description">
                                    <h5 class="card-title">AVI Unisex Spike Shoes Red/Yellow

                                    </h5>
                                    <p class="card-text">Product: AVI</p>
                                    <p class="card-text">Price: LKR10,499.00</p>
                                    <div class="input-group input-group-sm mb-3" style="float: unset">
                                        <span class="input-group-text" style="color:darkslategrey" >Quantity</span>
                                        <input type="number" class="form-control" aria-label="Sizing example input"
                                               aria-describedby="inputGroup-sizing-sm" value="1" style="width: 60%;margin-left: 10px">
                                        <button class="btn btn-success" style="margin: 10px; border-radius: 5px;">Add to Cart</button>
                                    </div>
                                </div>
                            </div>

                            <div class="recipe-card">
                                <img src="upload/avi/cricket-2.jpeg" class="card-img-top" alt="Product Image">
                                <div class="description">
                                    <h5 class="card-title">AVI Casual Lacing Shoes LIME

                                    </h5>
                                    <p class="card-text">Product: AVI</p>
                                    <p class="card-text">Price: LKR15,499.00</p>
                                    <div class="input-group input-group-sm mb-3" style="float: unset">
                                        <span class="input-group-text" style="color:darkslategrey" >Quantity</span>
                                        <input type="number" class="form-control" aria-label="Sizing example input"
                                               aria-describedby="inputGroup-sizing-sm" value="1" style="width: 60%;margin-left: 10px">
                                        <button class="btn btn-success" style="margin: 10px; border-radius: 5px;">Add to Cart</button>
                                    </div>
                                </div>
                            </div>




                        </div>
                    </section>

                    <section  class="recipes">
                        <div class="image-gallery">
                            <div class="recipe-card">
                                <img src="upload/avi/cricket-2.jpeg" class="card-img-top" alt="Product Image">
                                <div class="description">
                                    <h5 class="card-title">AVI Casual Lacing Shoes WHITE
                                    </h5>
                                    <p class="card-text">Product: ADIDAS</p>
                                    <p class="card-text">Price:  LKR15,499.00</p>
                                    <div class="input-group input-group-sm mb-3" style="float: unset">
                                        <span class="input-group-text" style="color:darkslategrey" >Quantity</span>
                                        <input type="number" class="form-control" aria-label="Sizing example input"
                                               aria-describedby="inputGroup-sizing-sm" value="1" style="width: 60%;margin-left: 10px">
                                        <button class="btn btn-success" style="margin: 10px; border-radius: 5px;">Add to Cart</button>
                                    </div>
                                </div>
                            </div>




                        </div>
                    </section>


                </section>

                <section class="section gb main-c " id="hoka"  style="padding: 0px;backface-visibility: hidden;overflow-x: hidden; background: unset" >
                    <h1 style="color: white;text-align: start;margin-left: 20px;
                    margin-top: 200px">Nike Shoes Collection</h1>
                    <section  class="recipes">
                        <div class="image-gallery">





                        </div>
                    </section>

                    <section  class="recipes">
                        <div class="image-gallery">





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
