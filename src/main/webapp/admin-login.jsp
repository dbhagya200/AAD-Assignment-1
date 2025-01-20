<%--
  Created by IntelliJ IDEA.
  User: dilini
  Date: 1/18/25
  Time: 1:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>E-Commerce Store</title>
    <link rel="stylesheet" href="frameWork/bootstrap.min.css">
    <link rel="stylesheet" href="frameWork/bootstrap.bundle.min.js">

    <style>
        /* Your custom CSS styles here */
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="#">E-Commerce Store</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Shop</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">About Us</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Contact</a>
            </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
        <div class="cart-icon">
            <a href="#"><i class="fas fa-shopping-cart"></i> Cart (0)</a>
        </div>
    </div>
</nav>

<section id="products" class="container my-5">
    <h2 class="mb-4">Products</h2>
    <div class="input-group mb-3">
        <input type="text" class="form-control" placeholder="Search by name" id="search-bar">
        <button class="btn btn-primary" type="button">Search</button>
    </div>
    <div class="row">
        <!-- Product Card 1 -->
        <div class="col-md-4 mb-4">
            <div class="card">
                <img src="../assets/images/img.png" class="card-img-top" alt="Product Image">
                <div class="card-body">
                    <h5 class="card-title">Smartphone</h5>
                    <p class="card-text">Category: Electronics</p>
                    <p class="card-text">Price: $699</p>
                    <div class="input-group input-group-sm mb-3">
                        <span class="input-group-text" id="inputGroup-sizing-sm">Quantity</span>
                        <input type="number" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" value="1">
                        <button class="btn btn-success">Add to Cart</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Product Card 2 -->
        <div class="col-md-4 mb-4">
            <div class="card">
                <img src="../assets/images/img.png" class="card-img-top" alt="Product Image">
                <div class="card-body">
                    <h5 class="card-title">Smartphone</h5>
                    <p class="card-text">Category: Electronics</p>
                    <p class="card-text">Price: $699</p>
                    <div class="input-group input-group-sm mb-3">
                        <span class="input-group-text">Quantity</span>
                        <input type="number" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" value="1">
                        <button class="btn btn-success">Add to Cart</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- Product Card 3 -->
        <div class="col-md-4 mb-4">
            <div class="card">
                <img src="../assets/images/img.png" class="card-img-top" alt="Product Image">
                <div class="card-body">
                    <h5 class="card-title">Smartphone</h5>
                    <p class="card-text">Category: Electronics</p>
                    <p class="card-text">Price: $699</p>
                    <div class="input-group input-group-sm mb-3">
                        <span class="input-group-text" >Quantity</span>
                        <input type="number" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" value="1">
                        <button class="btn btn-success">Add to Cart</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>



<footer class="bg-dark text-light mt-5">
    <div class="container">
        <p>&copy; 2023 E-Commerce Store. All rights reserved.</p>
    </div>
</footer>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
