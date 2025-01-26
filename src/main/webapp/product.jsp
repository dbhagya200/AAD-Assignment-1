<%@ page import="lk.ijse.ecommerceprojectnew.model.Product" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: dilini
  Date: 1/18/25
  Time: 8:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Products Details</title>
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
    <link rel="stylesheet" href="css/product.css">
</head>
<body>
<div id="preloader">
    <img class="preloader" src="/images/loader.gif" alt="">
</div><!-- end loader -->
<!-- END LOADER -->

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

    <section id="home" class="" style="background-color: #2c2f33;height: auto;">

        <div class="home-text-wrapper relative container" >
            <h1 style="color: white;text-align: start;margin-left: 20px;
                    margin-top: 200px">Product Shoes Collection</h1>
            <div id="product-container" class="product-container" style="display: flex;flex-wrap: wrap; gap: 20px">

            </div>
            <div class="home-message"  >

            </div>
        </div>

    </section>

</div><!-- end wrapper -->

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/carousel.js"></script>
<script src="js/animate.js"></script>
<script src="js/custom.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function () {
        function loadProducts() {
            fetch("/E_Commerce_Project_New_war_exploded/products")
                .then(response => response.json())
                .then(data => {
                    const container = document.getElementById("product-container");

                    if (data && data.length > 0) {
                        data.forEach(product => {
                            const cell = document.createElement("div");
                            cell.classList.add("card");
                            cell.style.width = "27rem";
                            cell.style.border = "1px solid #ddd";
                            cell.style.borderRadius = "10px";
                            cell.style.padding = "15px";
                            cell.style.marginBottom = "20px";
                            cell.style.backgroundColor = "#fff";

                            const image = document.createElement("img");
                            image.src = product.imageUrl || '/path/to/default-image.jpg';
                            image.classList.add("card-img-top");
                            image.alt = product.product_name || 'No name available';
                            image.style.height = "200px";
                            image.style.objectFit = "cover";
                            cell.appendChild(image);

                            const cardBody = document.createElement("div");
                            cardBody.classList.add("card-body");

                            const title = document.createElement("h5");
                            title.classList.add("card-title");
                            title.textContent = product.product_name;
                            cardBody.appendChild(title);

                            const description = document.createElement("p");
                            description.classList.add("card-text");
                            description.textContent = product.description;
                            description.style.color = "#3C3D37"
                            cardBody.appendChild(description);

                            const price = document.createElement("p");
                            price.classList.add("card-text");
                            <%--price.innerTML = `<strong>Price:</strong> $ ${product.price}`;--%>
                            <%--console.log("Product price: "+product.price)--%>
                            price.textContent =product.price;
                            price.style.color = "#243642"
                            cardBody.appendChild(price);

                            const quantityLabel = document.createElement("label");
                            quantityLabel.textContent = "Quantity:";
                            quantityLabel.style.display = "block";
                            quantityLabel.style.marginBottom = "5px";
                            quantityLabel.style.color = "#3C3D37"
                            cardBody.appendChild(quantityLabel);

                            const quantityInput = document.createElement("input");
                            quantityInput.type = "number";
                            quantityInput.value = 1;
                            quantityInput.min = 1;
                            quantityInput.max = product.stock_quantity;
                            quantityInput.classList.add("form-control");
                            quantityInput.style.width = "200px";
                            quantityInput.style.marginBottom = "10px";
                            cardBody.appendChild(quantityInput);

                            const addButton = document.createElement("button");
                            addButton.classList.add("btn", "btn-primary");
                            addButton.textContent = "Add to Cart";
                            cardBody.appendChild(addButton);

                            addButton.dataset.productId = product.id;
                            addButton.dataset.productName = product.product_name;
                            addButton.dataset.productPrice = product.price;
                            addButton.dataset.stockQuantity = product.stock_quantity;

                            addButton.addEventListener("click", function () {
                                const quantity = parseInt(quantityInput.value);
                                addToCart({
                                    id: product.id,
                                    name: product.product_name,
                                    price: product.price,
                                    quantity: quantity,
                                });
                            });

                            cardBody.appendChild(addButton);
                            cell.appendChild(cardBody);
                            container.appendChild(cell);


                        });

                    } else {
                        console.log("No products available.");
                    }
                })
                .catch(error => console.error("Error fetching products:", error));
        }

        loadProducts();
    });




</script>


</body>
</html>
