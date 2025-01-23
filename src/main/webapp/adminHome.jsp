<%--
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


</header>


<div class="container mt-5">
    <h2 class="mb-3">Admin Details</h2>
    <div class="input-group ">
        <input type="text" class="form-control" placeholder="Search by name" id="search-bar">
        <button class="btn btn-primary" type="button">Search</button>

    </div>
    <div class="container justify-content-between d-flex">
        <h4 class="mt-5">Admin List</h4>
        <button type="button" class="btn btn-primary mb-3 mt-5 text-right" data-bs-toggle="modal"
                data-bs-target="#customerModal">
            Add New Admin
        </button>
    </div>

    <!-- Add Customer Modal -->
    <div class="modal fade" id="customerModal" tabindex="-1" aria-labelledby="customerModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="container m-2">
                    <form id="addCustomerForm" action="admin" method="post">
                        <div class="mb-3 text-center">
                            <label  for="username" class="form-label fs-4 fw-bold ">Add New Admin </label>
                        </div>
                        <div class="mb-3">
                            <label style="text-align: start;" for="username" class="form-label">Name</label>
                            <input type="text" class="form-control" id="username" name="username" required>
                        </div>
                        <div class="mb-3">
                            <label for="email" class="form-label">Email</label>
                            <input type="email" class="form-control" id="email" name="email" required>
                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label">Password</label>
                            <input type="password" class="form-control" id="password" name="password" required>
                        </div>
                        <div class="mb-3">
                            <label for="confirm" class="form-label">Confirm Password</label>
                            <input type="password" class="form-control" id="confirm" name="confirm" required>
                        </div>

                        <button id="btn_save" type="submit" class="btn btn-primary">Save</button>
                        <button id="btn_cancel" type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Update Customer Modal -->
    <div class="modal fade" id="updatecustomerModal" tabindex="-1" aria-labelledby="updatecustomerModalLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="container m-2">
                    <form id="updateCustomerForm">
                        <div class="mb-3 text-center">
                            <label for="username" class="form-label fs-4 fw-bold ">Update admin Form</label>
                        </div>
<%--                        <div class="mb-3">--%>
<%--                            <label for="updated_customer_id" class="form-label">Customer Id</label>--%>
<%--                            <input type="text" class="form-control" id="updated_customer_id" readonly>--%>
<%--                        </div>--%>
                        <div class="mb-3">
                            <label for="updated_name" class="form-label">Username</label>
                            <input type="text" class="form-control" id="updated_name">
                        </div>
                        <div class="mb-3">
                            <label for="updated_email" class="form-label">Email</label>
                            <input type="email" class="form-control" id="updated_email">
                        </div>
                        <button id="btn_update" type="button" class="btn btn-primary">Update</button>
                        <button id="btn_upcancel" type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                    </form>
                </div>
            </div>
        </div>
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
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
<script>
    $.ajax({
        url: "admin",
        method: "GET",
        success: function (response) {
            // Parse the JSON response if needed
            const admin = typeof response === "string" ? JSON.parse(response) : response;
            const tableBody = document.getElementById("customer_table_body");

            // Clear the table body before appending new rows
            tableBody.innerHTML = "";

            // Iterate over users array and create rows for each user
            admin.forEach(function(admin) {
                // Create a new row
                const newRow = tableBody.insertRow();

                // Insert cells into the new row
                const usernameCell = newRow.insertCell(0); // Username cell
                const emailCell = newRow.insertCell(1);    // Email cell
                const actionCell = newRow.insertCell(2);   // Action cell

                // Add data to the username and email cells
                usernameCell.textContent = admin.username;
                emailCell.textContent = admin.email;

                // Create edit and delete icons
                const editIcon = document.createElement("i");
                editIcon.className = "fas fa-pencil-alt"; // FontAwesome class for pencil icon
                editIcon.style.color = "teal";
                editIcon.style.cursor = "pointer";
                editIcon.title = "Edit admin";
                editIcon.addEventListener("click", () => {
                    alert(`Edit user: ${admin.username}`);
                    // Add your edit logic here
                });

                const deleteIcon = document.createElement("i");
                deleteIcon.className = "fas fa-trash-alt"; // FontAwesome class for trash icon
                deleteIcon.style.color = "red";
                deleteIcon.style.cursor = "pointer";
                deleteIcon.title = "Delete User";
                deleteIcon.addEventListener("click", () => {
                    if (confirm(`Are you sure you want to delete admin: ${admin.username}?`)) {
                        deleteAdmin(admin.username); // Call delete function
                    }
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

    function deleteAdmin(username) {
        if (!username) {
            alert("Username is required.");
            return;
        }

        $.ajax({
            url: "/delete-admin", // URL of the DeleteAdminServlet
            method: "POST",
            data: { username: username }, // Send the username in the request
            success: function (response) {
                alert(response); // Show the success message
                location.reload(); // Reload the page or update the UI
            },
            error: function (xhr, status, error) {
                console.error("Error deleting admin:", error);
                alert(`Error: ${xhr.responseText || "Failed to delete admin."}`);
            }
        });
    }

</script>
</body>

</html>