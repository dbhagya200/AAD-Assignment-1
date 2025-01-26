<%--
  Created by IntelliJ IDEA.
  User: dilini
  Date: 1/21/25
  Time: 3:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Category Management</title>
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
    <h2 class="mb-3">Category Details</h2>
    <div class="input-group ">
        <input type="text" class="form-control" placeholder="Search by name" id="search-bar">
        <button class="btn btn-primary" type="button">Search</button>

    </div>
    <div class="container justify-content-between d-flex">
        <h4 class="mt-5">Category List</h4>
        <button type="button" class="btn btn-primary mb-3 mt-5 text-right" data-bs-toggle="modal"
                data-bs-target="#customerModal">
            Add New Category
        </button>
    </div>

    <!-- Add Admin Modal -->
    <div class="modal fade" id="customerModal" tabindex="-1" aria-labelledby="customerModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="container m-2">
                    <form id="addCustomerForm" action="category" method="post">
                        <div class="mb-3 text-center">
                            <label  for="category_name" class="form-label fs-4 fw-bold ">Add New Category </label>
                        </div>
                        <div class="mb-3">
                            <label style="text-align: start;" for="category_name" class="form-label">Category Name</label>
                            <input type="text" class="form-control" id="category_name" name="category_name" required>
                        </div>


                        <button id="btn_save" type="submit" class="btn btn-primary">Save</button>
                        <button id="btn_cancel" type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Update admin Modal -->
    <div class="modal fade" id="editCategoryModel" tabindex="-1" aria-labelledby="editCategoryModellLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="editCategoryModelLabel">Edit Category</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="editCtegoryForm">
                        <div class="mb-3">
                            <label for="editID" class="form-label">Category ID</label>
                            <input type="text" class="form-control" id="editID" name="editID" readonly>
                        </div>
                        <div class="mb-3">
                            <label for="editname" class="form-label">Category Name</label>
                            <input type="text" class="form-control" id="editname" name="editname" required>
                        </div>

                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary" onclick="updateCategory()">Save Changes</button>
                </div>
            </div>
        </div>
    </div>


    <!-- Customer Table -->
    <table class="table table-bordered">
        <thead>
        <tr>
            <th class=" text-light">Category ID</th>
            <th class=" text-light">Category Name</th>
            <th class=" text-light">Actions</th>
        </tr>
        </thead>
        <tbody id="categoryTableBody">
        </tbody>
    </table>
</div>


<script src="js/jquery-3.7.1.min.js"></script>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
<script>
    fetchCategory();
    function fetchCategory() {
        $.ajax({
            url: "category",
            method: "GET",
            success: function (response) {
                const category = typeof response === "string" ? JSON.parse(response) : response;
                const tableBody = document.getElementById("categoryTableBody");

                tableBody.innerHTML = "";

                category.forEach(function(category) {
                    const newRow = tableBody.insertRow();

                    const category_id = newRow.insertCell(0);
                    const category_name = newRow.insertCell(1);
                    const actionCell = newRow.insertCell(2);


                    category_id.textContent = category.category_id;
                    category_name.textContent = category.category_name;

                    const editIcon = document.createElement("i");
                    editIcon.className = "fas fa-pencil-alt";
                    editIcon.style.color = "teal";
                    editIcon.style.cursor = "pointer";
                    editIcon.title = "Edit category";
                    editIcon.addEventListener("click", () => {
                        document.getElementById("editID").value = category.category_id;
                        document.getElementById("editname").value = category.category_name;

                        const editModal = new bootstrap.Modal(document.getElementById("editCategoryModel"));
                        editModal.show();
                    });

                    const deleteIcon = document.createElement("i");
                    deleteIcon.className = "fas fa-trash-alt";
                    deleteIcon.style.color = "red";
                    deleteIcon.style.cursor = "pointer";
                    deleteIcon.title = "Delete User";
                    deleteIcon.addEventListener("click", () => {
                        if (confirm(`Are you sure you want to delete category: ${category.category_id}?`)) {
                            deleteCategory(category.category_id);

                        }
                    });

                    actionCell.appendChild(editIcon);
                    actionCell.appendChild(document.createTextNode(" "));
                    actionCell.appendChild(deleteIcon);
                });
            },
            error: function (xhr, status, error) {
                console.error("Error fetching category:", error);
            }
        });
    }
    function deleteCategory(category_id) {
        if (!category_id) {
            alert("Category ID is required.");
            return;
        }
        $.ajax({
            url: "/E_Commerce_Project_New_war_exploded/category?category_id=" + encodeURIComponent(category_id),
            method: "DELETE",
            success: function (response) {
                alert(response);
                fetchCategory();
            },
            error: function (xhr, status, error) {
                console.error("Error deleting admin:", error);
                alert(`Error: ${xhr.responseText || "Failed to delete categorry."}`);
            }
        });
    }

    function updateCategory() {
        const category_id = document.getElementById("editID").value;
        const category_name = document.getElementById("editname").value;

        if (!category_id || !category_name) {
            alert(" category ID and name are required.");
            return;
        }

        $.ajax({
            url: "/E_Commerce_Project_New_war_exploded/category?category_id=" + encodeURIComponent(category_id),
            method: "PUT",
            contentType: "application/json",
            data: JSON.stringify({
                category_id: category_id,
                category_name: category_name,
            }),
            success: function (response) {
                alert(response);
                fetchCategory();
            },
            error: function (xhr, status, error) {
                console.error("Error updating category:", error);
                alert(`Error: ${xhr.responseText || "Failed to update category."}`);
            }
        });
    }





</script>
</body>

</html>
