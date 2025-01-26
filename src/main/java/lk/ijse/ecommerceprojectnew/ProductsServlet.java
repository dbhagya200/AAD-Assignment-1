package lk.ijse.ecommerceprojectnew;

import com.google.gson.Gson;
import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import jdk.jfr.Category;
import lk.ijse.ecommerceprojectnew.model.Categories;
import lk.ijse.ecommerceprojectnew.model.Product;
import org.springframework.security.core.userdetails.User;

import javax.sql.DataSource;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50 // 50MB
)
@WebServlet(name = "productsServlet", value = "/products")
public class ProductsServlet extends HttpServlet {

    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");

        Connection connection = null;
        try {
            connection = dataSource.getConnection();
            ResultSet resultSet = connection.prepareStatement("SELECT * FROM products").executeQuery();
            List<Product> products = new ArrayList<>();

            while (resultSet.next()) {
                products.add(new Product(
                        resultSet.getInt("product_id"),
                        resultSet.getString("product_name"),
                        resultSet.getString("description"),
                        resultSet.getString("price"),
                        resultSet.getInt("stock_quantity"),
                        resultSet.getString("imageUrl"),
                        resultSet.getInt("category_id")
                ));
            }

            // Convert the product list to JSON
            String json = new Gson().toJson(products);
            resp.getWriter().write(json);

        } catch (Exception e) {
            e.printStackTrace();
            resp.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            resp.getWriter().write("{\"error\": \"Failed to load products\"}");
        } finally {
            if (connection != null) {
                try {
                    connection.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        try {
            String name = req.getParameter("product_name");
            String description = req.getParameter("description");
            String price = req.getParameter("price");
            String quantity = req.getParameter("stock_quantity");
            String catId = req.getParameter("category_id");

            Part filePart = req.getPart("imageUrl");
            String imageFileName = filePart.getSubmittedFileName();
            System.out.println(imageFileName);

            String uploadDir = "/home/dilini/Documents/IJSE-Institute of Software Engineering/2nd Semester/AAD/Spring/E-Commerce-Project-New/src/main/webapp/productImages";
            File uploadDirectory = new File(uploadDir);

            if (!uploadDirectory.exists()) {
                if (!uploadDirectory.mkdirs()) {
                    resp.sendRedirect("a_products.jsp?sysError=Something wrong in our end!");
                    return;
                }
                System.out.println("created");
            }

            File imageFile = new File(uploadDir + File.separator + imageFileName);
            try (InputStream inputStream = filePart.getInputStream()) {
                Files.copy(inputStream, imageFile.toPath(), StandardCopyOption.REPLACE_EXISTING);
                System.out.println(imageFile.toPath());
            }

            Product product = new Product();
            product.setProduct_name(name);
            product.setDescription(description);
            product.setPrice(price);
            product.setStock_quantity(Integer.parseInt(quantity));
            product.setImageUrl("productImages/" + imageFileName);


            try (Connection connection = dataSource.getConnection()) {
                String sql = "INSERT INTO products (product_name, description, price, stock_quantity, imageUrl, category_id) VALUES (?, ?, ?, ?, ?, ?)";
                try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                    preparedStatement.setString(1, name);
                    preparedStatement.setString(2, description);
                    preparedStatement.setString(3, price);
                    preparedStatement.setInt(4, Integer.parseInt(quantity));
                    preparedStatement.setString(5, product.getImageUrl());
                    preparedStatement.setString(6, catId);


                    int rowsAffected = preparedStatement.executeUpdate();

                    if (rowsAffected > 0) {
                        resp.sendRedirect("a_products.jsp?status=success&alert=Product Saved Successfully!");
                    } else {
                        resp.sendRedirect("a_products.jsp?status=failed&alert=Product Not Saved!");
                    }
                }


//                resp.sendRedirect("a_products.jsp?status=success&alert=Product Saved Successfully!");
            }
        } catch (Exception e) {
            resp.sendRedirect("a_products.jsp?status=failed&alert=Product Not Saved!");
            e.printStackTrace();

        }
    }

}


