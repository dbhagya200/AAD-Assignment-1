<%@ page import="lk.ijse.ecommerceprojectnew.model.Product" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: dilini
  Date: 1/18/25
  Time: 1:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Customer Management System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
    />
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="frameWork/bootstrap.min.css">
    <link rel="stylesheet" href="frameWork/bootstrap.bundle.min.js">
    <link rel="stylesheet" href="css/admin.css">
</head>

<body>

<header>
    <img src="upload/background-1.jpg" alt="">
    <div class="topbar clearfix">
        <div class="h-container">
            <div class="row-fluid">
                <div class="col-md-6 col-sm-6 text-left">
                    <p>
                        <strong><i style="color: aqua;" class="fa fa-phone"></i></strong> +94 25 222 51 47 &nbsp;&nbsp;
                        <strong><i style="color: aqua;" class="fa fa-envelope"></i></strong> <a href="mailto:#">info@ecommerce.com</a>
                    </p>
                </div><!-- end left -->
                <div class=" hidden-xs text-right">
                    <div class="social">
                        <a class="facebook" href="#" data-tooltip="tooltip" data-placement="bottom" title="Facebook"><i style="margin-top: 6px" class="fa fa-facebook"></i></a>
                        <a class="twitter" href="#" data-tooltip="tooltip" data-placement="bottom" title="Twitter"><i style="margin-top: 6px" class="fa fa-twitter"></i></a>
                        <a class="google" href="#" data-tooltip="tooltip" data-placement="bottom" title="Google Plus"><i style="margin-top: 6px" class="fa fa-google-plus"></i></a>
                        <a class="linkedin" href="#" data-tooltip="tooltip" data-placement="bottom" title="Linkedin"><i style="margin-top: 6px" class="fa fa-linkedin"></i></a>
                        <a class="pinterest" href="#" data-tooltip="tooltip" data-placement="bottom" title="Pinterest"><i style="margin-top: 6px" class="fa fa-pinterest"></i></a>
                    </div><!-- end social -->
                </div><!-- end left -->
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end topbar -->


    <nav class="navbar navbar-expand-lg navbar-dark bg-dark ">
        <a style="display: flex" class="navbar-brand" href="adminHome.jsp">
            <h2 style="color: white">EchoCart</h2></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse " id="navbarNav">
            <ul class="navbar-nav mr-5">
                <li class="nav-item active">
                    <a class="nav-link" href="adminHome.jsp">Home </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="a_users.jsp">Users</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="a-products.jsp">Products</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="a_categories.jsp">Categories</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="a_orders.jsp">Orders</a>
                </li>
            </ul>
            <!-- <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form> -->
            <!-- <div class="cart-icon">
                <a href="#"><i class="fas fa-shopping-cart"></i> Cart (0)</a>
            </div> -->
        </div>
    </nav>


</header>




<%--    <div class="input-group ">--%>
<%--        <input type="text" class="form-control" placeholder="Search by name" id="search-bar">--%>
<%--        <button class="btn btn-primary" type="button">Search</button>--%>

<%--    </div>--%>
<%--    <div class="container justify-content-between d-flex">--%>
<%--        <h4 class="mt-5">Admin List</h4>--%>
<%--        <button type="button" class="btn btn-primary mb-3 mt-5 text-right" data-bs-toggle="modal"--%>
<%--                data-bs-target="#customerModal">--%>
<%--            Add New Admin--%>
<%--        </button>--%>
<%--    </div>--%>

    <!-- Product Modal -->

<div class="container mt-5">
    <h2 class="mb-3">Product Details</h2>
    <button style="font-family: 'Droid Serif', sans-serif;" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#productModal">
        Add Product
    </button>

    <div class="modal fade" id="productModal" tabindex="-1" aria-labelledby="productModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header bg-primary text-white">
                    <h5 style="font-family: 'Times New Roman', Times, serif;" class="modal-title" id="productModalLabel">Add New Product</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form id="productForm" enctype="multipart/form-data" action="products" method="post">
                    <div class="modal-body">
                        <div class="mb-3">
                            <label  for="productName" class="form-label">Product Name:</label>
                            <input type="text" class="form-control" id="productName" name="product_name" required>
                        </div>
                        <div class="mb-3">
                            <label for="productDescription" class="form-label">Description:</label>
                            <textarea class="form-control" id="productDescription" name="description" rows="3"></textarea>
                        </div>
                        <div class="mb-3">
                            <label for="productPrice" class="form-label">Price:</label>
                            <input type="number" class="form-control" id="productPrice" name="price" required>
                        </div>
                        <div class="mb-3">
                            <label for="quentity" class="form-label">Quntity:</label>
                            <input type="number" class="form-control" id="quentity" name="stock_quentity" required>
                        </div>
                        <div class="mb-3">
                            <label for="imageUrl" class="form-label">Upload Image:</label>
                            <input type="file" class="form-control" id="imageUrl" name="imageUrl" accept="image/*" required>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                        <button type="submit" class="btn btn-primary">Save Product</button>
                    </div>
                </form>


                <%
                    List<Product> productList = (List<Product>) request.getAttribute("productList");
                    if (productList != null) {
                        for (Product productCard : productList) {

                %>
                <div class="card mb-2" style="max-width: 540px;">
                    <div class="row g-0">
                        <div class="col-md-4">
                            <img src="<%=productCard.getImageUrl()%>" class="img-fluid rounded-start" alt="Book image">
                        </div>
                        <div class="col-md-8">
                            <div class="card-body">
                                <h5 class="card-title"><%=productCard.getProduct_name()%>
                                </h5>
                                <p class="card-text text-truncate"><%=productCard.getDescription()%>
                                </p>
                                <p class="card-text mb-1"><strong>QTY:</strong><%=productCard.getStock_quantity()%>
                                </p>
                                <p class="card-text mb-1"><strong>Price:</strong><%=productCard.getPrice()%>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <%
                        }
                    }
                %>
            </div>
            </div>
        </div>
    </div>
</div>






<script src="js/jquery-3.7.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
<script>
    function generateOrderID() {
        console.log("Generating Order ID...");
        const id = `OID-0${orderID}`;
        orderID++;
        console.log(`Generated Order ID: ${id}`);
        return id;
    }
</script>
</body>

</html>