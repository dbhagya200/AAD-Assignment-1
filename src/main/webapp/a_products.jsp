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
                    <a class="nav-link" href="a_products.jsp">Products</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="a_categories.jsp">Categories</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="a_orders.jsp">Logout</a>
                </li>
            </ul>
        </div>
    </nav>


</header>


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
                            <label  for="productCategory" class="form-label">Category Id:</label>
                            <input type="text" class="form-control" id="productCategory" name="productCategory" required>
                        </div>
                        <div class="mb-3">
                            <label for="productPrice" class="form-label">Price:</label>
                            <input type="text" class="form-control" id="productPrice" name="price" required>
                        </div>
                        <div class="mb-3">
                            <label for="quantity" class="form-label">Quantity:</label>
                            <input type="number" class="form-control" id="quantity" name="stock_quantity" required>
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
            </div>
        </div>
    </div>

    <section id="home" class="" style="height: auto; backface-visibility: unset">

        <div class="home-text-wrapper relative container" >
            <h1 style="color: white;text-align: start;margin-left: 20px;
                margin-top: 50px;margin-bottom: 20px">Product Shoes Collection</h1>
            <div id="product-container" class="product-container" style="display: flex;flex-wrap: wrap; gap: 20px">

            </div>

        </div>



    </section>
</div>







<script src="js/jquery-3.7.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
<script>
    <%--function generateOrderID() {--%>
    <%--    console.log("Generating Order ID...");--%>
    <%--    const id = `OID-0${orderID}`;--%>
    <%--    orderID++;--%>
    <%--    console.log(`Generated Order ID: ${id}`);--%>
    <%--    return id;--%>
    <%--}--%>


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
                            cell.style.width = "17rem";
                            cell.style.color = "25rem"
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
                            cell.style.width = "15rem";
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

        function addToCart(product) {
            let cart = JSON.parse(localStorage.getItem("cart")) || [];

            const existingProduct = cart.find(item => item.id === product.id);
            if (existingProduct) {
                existingProduct.quantity += product.quantity;
            } else {
                cart.push(product);
            }
            localStorage.setItem("cart", JSON.stringify(cart));

            alert(`${product.name} has been added to your cart!`);
            console.log("Cart:", cart);
        }
        loadProducts();
    });
</script>
</body>

</html>