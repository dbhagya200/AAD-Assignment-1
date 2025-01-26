package lk.ijse.ecommerceprojectnew;

import com.google.gson.Gson;
import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jdk.jfr.Category;
import lk.ijse.ecommerceprojectnew.model.Admin;
import lk.ijse.ecommerceprojectnew.model.Categories;

import javax.sql.DataSource;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(value = "/category")
public class CategoryServlet extends HttpServlet {

    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;
    List<Categories> categoryList = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            Connection connection = dataSource.getConnection();
            String sql = "select * from categories";
            PreparedStatement prsm = connection.prepareStatement(sql);
            ResultSet result = prsm.executeQuery();
            while (result.next()) {
                Categories category = new Categories(
                      result.getInt(1),
                        result.getString(2)
                );
                categoryList.add(category);

            }
            Gson gson = new Gson();
            String json = gson.toJson(categoryList);
            categoryList.clear();
            resp.setContentType("application/json");
            resp.setCharacterEncoding("UTF-8");
            PrintWriter out = resp.getWriter();
            out.print(json);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String category_name = req.getParameter("category_name");

        try {
            Connection connection = dataSource.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO categories(category_name) VALUES (?)");
            preparedStatement.setString(1, category_name);

            if (preparedStatement.executeUpdate() > 0) {
                resp.sendRedirect("a_categories.jsp");
            } else {
                resp.sendRedirect("a_categories.jsp");
            }

        } catch (SQLException e) {
            resp.sendRedirect("a_categories.jsp?error=Registration+Failed"+e.getMessage());
            e.printStackTrace();
        }
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String category_id = req.getParameter("category_id");

        if (category_id == null || category_id.trim().isEmpty()) {
            resp.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            resp.getWriter().write("Invalid or missing 'username' parameter.");
            return;
        }

        try {
            Connection connection = dataSource.getConnection();
            String sql = "DELETE FROM categories WHERE category_id = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, category_id);

            System.out.println("delete category_id = " + category_id);

            int rowsAffected = preparedStatement.executeUpdate();
            if (rowsAffected > 0) {
                resp.setStatus(HttpServletResponse.SC_OK);
                resp.getWriter().write("Category deleted successfully.");
            } else {
                resp.setStatus(HttpServletResponse.SC_NOT_FOUND);
                resp.getWriter().write("Category not found.");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            Connection connection = dataSource.getConnection();
            String updateQuery = "UPDATE categories SET category_name = ? WHERE category_id = ?";
            try (PreparedStatement preparedStatement = connection.prepareStatement(updateQuery)) {
                preparedStatement.setString(1, req.getParameter("category_name"));
                preparedStatement.setString(2, req.getParameter("category_id"));
                System.out.println("Updating Category: category_id=" + req.getParameter("category_id") + ", category_name=" + req.getParameter("category_name"));
                int rowsUpdated = preparedStatement.executeUpdate();

                if (rowsUpdated > 0) {
                    resp.setStatus(HttpServletResponse.SC_OK);
                    resp.getWriter().write("Category updated successfully.");
                } else {
                    resp.setStatus(HttpServletResponse.SC_NOT_FOUND);
                    resp.getWriter().write("Category not found.");
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
