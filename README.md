# EchoCart E-Commerce Platform

## Overview
EchoCart is an e-commerce platform designed for managing products, categories, users, and orders with a clean and user-friendly interface. This platform provides administrators with tools to manage the backend, while users can browse and purchase products seamlessly.

## Features

### Admin Features
- **Category Management**: Add, edit, and delete product categories.
- **Product Management**: Manage product inventory, including adding, updating, and deleting products.
- **User Management**: View and manage registered users.
- **Order Management**: Track and manage customer orders.
- **Responsive Design**: Admin panel is fully responsive and accessible on different devices.

### User Features
- Browse products by categories.
- Add products to the cart and place orders.
- View order history and manage user profiles.

---

## Technologies Used

### Backend
- **Java**: Core backend logic using Servlets and JSP.
- **Servlets**: Handle HTTP requests and responses.
- **MySQL**: Database for storing user, product, category, and order information.

### Frontend
- **HTML, CSS, JavaScript**: For creating user interfaces.
- **Bootstrap 5**: Responsive design framework.
- **Font Awesome**: Icon library for enhancing UI elements.

### Libraries/Dependencies
- **jQuery**: Simplifies AJAX calls and DOM manipulation.
- **Bootstrap Bundle**: Includes Bootstrap JavaScript components.

---

## Installation

### Prerequisites
- Java Development Kit (JDK) 11 or higher
- Apache Tomcat Server (v9 or higher)
- MySQL Database
- IDE (e.g., IntelliJ IDEA, Eclipse)

### Steps
1. Clone the repository or download the project files.
2. Set up the database:
   - Import the SQL script `ecommerce_db.sql` (if available) into your MySQL database.
   - Update database connection credentials in the `DBConnection` class (if applicable).
3. Configure the project in your IDE:
   - Add Tomcat Server to your IDE.
   - Deploy the project to the server.
4. Run the application:
   - Start the Tomcat Server.
   - Access the application at `http://localhost:8080/E_Commerce_Project_New_war_exploded/adminHome.jsp`.

---

## File Structure

### Backend
- `src/servlet`: Contains all servlets (e.g., `CategoryServlet`, `ProductServlet`).
- `src/db`: Contains database connection utilities.

### Frontend
- `webapp/css`: Contains custom stylesheets.
- `webapp/js`: Contains JavaScript and jQuery scripts.
- `webapp/adminHome.jsp`: Admin dashboard home page.
- `webapp/a_categories.jsp`: Admin side category management page.
- `webapp/a_products.jsp`: Admin side product management page.
- `webapp/product.jsp`: User side product viewer and add to cart page.

### Database
- `ecommerce_db.sql`: Database schema and initial data (if provided).

---

## API Endpoints

### Category Endpoints
- **GET /category**: Fetch all categories.
- **POST /category**: Add a new category.
- **PUT /category**: Update an existing category.
- **DELETE /category?category_id={id}**: Delete a category.

### Product Endpoints
- **GET /product**: Fetch all products.
- **POST /product**: Add a new product.
- **PUT /product**: Update an existing product.
- **DELETE /product?product_id={id}**: Delete a product.

---

## Usage

### Adding Categories
1. Navigate to the **Category Management** page.
2. Click **Add New Category** to open the modal.
3. Enter the category name and click **Save**.

### Editing Categories
1. Click the edit icon next to a category.
2. Update the category details in the modal.
3. Click **Save Changes** to update.

### Deleting Categories
1. Click the delete icon next to a category.
2. Confirm the deletion when prompted.

---

## Troubleshooting

### Common Issues
- **AJAX Requests Fail**:
  - Ensure the servlet mappings in `web.xml` or annotations are correct.
  - Verify database connectivity.

- **Modal Not Closing**:
  - Ensure Bootstrap's JavaScript bundle is properly included.

- **Database Errors**:
  - Check for correct credentials in the database connection class.
  - Verify that the database is running and accessible.

---

## Contributing
Contributions are welcome! If you'd like to contribute:
1. Fork the repository.
2. Create a new branch (`feature/your-feature-name`).
3. Commit your changes.
4. Push to the branch and create a pull request.

---
![ss-index](https://github.com/user-attachments/assets/a474f587-1e6d-4499-8825-3a3201e5a618)
![ss-signup](https://github.com/user-attachments/assets/5cb11c16-e38a-44fa-ac4e-e67f5b19f010)
![ss-login](https://github.com/user-attachments/assets/f7f5ef3b-5238-4db1-b136-85e9545c4e43)
![ss-newArrival](https://github.com/user-attachments/assets/2a0fcc1d-0af6-4ed9-ae20-ab8a7d38bdd7)
![ss-userHome](https://github.com/user-attachments/assets/1fcd3735-a395-4ed9-9531-9753378f568f)
![ss-user-product-Viewer](https://github.com/user-attachments/assets/b988723a-9914-42b4-b9d7-50093857fa75)
![ss-add to cart](https://github.com/user-attachments/assets/45cd8627-65b1-4593-a809-ea1408134a16)








