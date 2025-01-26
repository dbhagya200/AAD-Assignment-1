<%@ page import="lk.ijse.ecommerceprojectnew.dto.UserDTO" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
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
    <title>User Management </title>
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
                    <a class="nav-link" href="a_products.jsp">Products</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="a_categories.jsp">Categories</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="a_orders.jsp">Orders</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="logout">Logout</a>
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



<div class="container mt-5">
    <h2 class="mb-3">User Details</h2>
<%--    <div class="input-group ">--%>
<%--        <input type="text" class="form-control" placeholder="Search by name" id="search-bar">--%>
<%--        <button class="btn btn-primary" type="button">Search</button>--%>

<%--    </div>--%>
    <div class="container justify-content-between d-flex">
        <h4 class="mt-5">User List</h4>
    </div>

    <!-- Customer Table -->
    <table class="table table-bordered">
        <thead>
        <tr>
            <th class=" text-light">Username</th>
            <th class=" text-light">Email</th>
            <th class=" text-light">Actions</th>
        </tr>
        </thead>
        <tbody id="customer_table_body">

        </tbody>
    </table>

</div>


<script src="js/jquery-3.7.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
<script>
    $.ajax({
        url: "a-users",
        method: "GET",
        success: function (response) {
            // Parse the JSON response if needed
            const users = typeof response === "string" ? JSON.parse(response) : response;
            const tableBody = document.getElementById("customer_table_body");

            // Clear the table body before appending new rows
            tableBody.innerHTML = "";

            // Iterate over users array and create rows for each user
            users.forEach(function(user) {
                // Create a new row
                const newRow = tableBody.insertRow();

                // Insert cells into the new row
                const usernameCell = newRow.insertCell(0); // Username cell
                const emailCell = newRow.insertCell(1);    // Email cell
                const actionCell = newRow.insertCell(2);   // Action cell

                // Add data to the username and email cells
                usernameCell.textContent = user.username;
                emailCell.textContent = user.email;

                // Create edit and delete icons
                const editIcon = document.createElement("i");
                editIcon.className = "fas fa-pencil-alt"; // FontAwesome class for pencil icon
                editIcon.style.color = "teal";
                editIcon.style.cursor = "pointer";
                editIcon.title = "Edit User";
                editIcon.addEventListener("click", () => {
                    alert(`Edit user: ${user.username}`);
                    // Add your edit logic here
                });

                const deleteIcon = document.createElement("i");
                deleteIcon.className = "fas fa-trash-alt"; // FontAwesome class for trash icon
                deleteIcon.style.color = "red";
                deleteIcon.style.cursor = "pointer";
                deleteIcon.title = "Delete User";
                deleteIcon.addEventListener("click", () => {
                    alert(`Delete user: ${user.username}`);
                    // Add your delete logic here
                });

                // Append icons to the action cell
                actionCell.appendChild(editIcon);
                actionCell.appendChild(document.createTextNode(" ")); // Add spacing
                actionCell.appendChild(deleteIcon);
            });
        },
        error: function (xhr, status, error) {
            console.error("Error fetching users:", error);
        }
    });



</script>
</body>

</html>