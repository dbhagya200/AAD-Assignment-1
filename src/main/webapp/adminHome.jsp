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
    <title>Admin Home</title>
    <link rel="stylesheet" href="frameWork/bootstrap.min.css">
    <link rel="stylesheet" href="frameWork/bootstrap.bundle.min.js">
    <link rel="stylesheet" href="css/admin.css">

    <style>
        /* Your custom CSS styles here */
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark ">
    <a style="display: flex" class="navbar-brand" href="loginHome.jsp">
        <img src="images/apple-touch-icon.png" alt=""><h2 style="color: white">EchoCart</h2></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse " id="navbarNav">
        <ul class="navbar-nav mr-5">
            <li class="nav-item active">
                <a class="nav-link" href="adminHome.jsp">Home </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="a-users.jsp">Users</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="a-products.jsp">Products</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="a-categories.jsp">Categories</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="a-orders.jsp">Orders</a>
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

<section id="admin" class="container my-4">
    <h2 class="mb-3">Admin </h2>
    <div class="input-group mb-2">
        <input type="text" class="form-control" placeholder="Search by name" id="search-bar">
        <button class="btn btn-primary" type="button">Search</button>

    </div>
    <div class="container mt-2">
        <div class="container justify-content-between d-flex">
            <h4 class="mt-4">Admin List</h4>
            <button type="button" class="btn btn-primary mb-3 mt-4 text-right" data-bs-toggle="modal"
                    data-bs-target="#customerModal">
                Add New Admin
            </button>
        </div>

        <div class="modal fade" id="customerModal" tabindex="-1" aria-labelledby="customerModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="container m-2">
                        <form id="addCustomerForm">
                            <div class="mb-3 text-center">
                                <label for="l-name" class="form-label fs-4 fw-bold ">Add Admin Form</label>
                            </div>
                            <div class="mb-3">
                                <label for="username" class="form-label">Username</label>
                                <input type="text" class="form-control" id="username" required>
                            </div>
                            <div class="mb-3">
                                <label for="email" class="form-label">Email</label>
                                <input type="email" class="form-control" id="email" required>
                            </div>

                            <button id="btn_save_customer" type="button" class="btn btn-primary">Save</button>
                            <button id="btn_cancel_customer" type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="updatecustomerModal" tabindex="-1" aria-labelledby="updatecustomerModalLabel"
             aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="container m-2">
                        <form id="updateCustomerForm">
                            <div class="mb-3 text-center">
                                <label for="l-name" class="form-label fs-4 fw-bold ">Update Customer Form</label>
                            </div>
                            <div class="mb-3">
                                <label for="updated_customer_id" class="form-label">Customer Id</label>
                                <input type="text" class="form-control" id="updated_customer_id" readonly>
                            </div>
                            <div class="mb-3">
                                <label for="updated_name" class="form-label">Name</label>
                                <input type="text" class="form-control" id="updated_name">
                            </div>
                            <div class="mb-3">
                                <label for="updated_address" class="form-label">Address</label>
                                <input type="text" class="form-control" id="updated_address">
                            </div>
                            <button id="btn_update_customer" type="button" class="btn btn-primary">Update</button>
                            <button id="btn_upcancel_customer" type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <table class="table table-bordered">
            <thead>
            <tr>
                <td class="bg-secondary text-light">Username</td>
                <td class="bg-secondary text-light">Email</td>
                <td class="bg-secondary text-light">Contact</td>
                <td class="bg-secondary text-light">Actions</td>
            </tr>
            </thead>
            <tbody id="customer_table_body">
            </tbody>
        </table>



    </div>
    <!-- <div class="row">

    </div> -->







</section>


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
