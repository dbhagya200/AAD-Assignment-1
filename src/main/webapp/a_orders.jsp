<%--
  Created by IntelliJ IDEA.
  User: dilini
  Date: 1/21/25
  Time: 3:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Orders Management </title>
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
        </div>
    </nav>


</header>



<div class="container mt-5">
    <h2 class="mb-3">User Details</h2>

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
            const users = typeof response === "string" ? JSON.parse(response) : response;
            const tableBody = document.getElementById("customer_table_body");

            tableBody.innerHTML = "";

            users.forEach(function(user) {
                const newRow = tableBody.insertRow();

                const usernameCell = newRow.insertCell(0);
                const emailCell = newRow.insertCell(1);
                const actionCell = newRow.insertCell(2);

                usernameCell.textContent = user.username;
                emailCell.textContent = user.email;

                const editIcon = document.createElement("i");
                editIcon.className = "fas fa-pencil-alt";
                editIcon.style.color = "teal";
                editIcon.style.cursor = "pointer";
                editIcon.title = "Edit User";
                editIcon.addEventListener("click", () => {
                    alert(`Edit user: ${user.username}`);

                });

                const deleteIcon = document.createElement("i");
                deleteIcon.className = "fas fa-trash-alt";
                deleteIcon.style.color = "red";
                deleteIcon.style.cursor = "pointer";
                deleteIcon.title = "Delete User";
                deleteIcon.addEventListener("click", () => {
                    alert(`Delete user: ${user.username}`);

                });

                actionCell.appendChild(editIcon);
                actionCell.appendChild(document.createTextNode(" "));
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
