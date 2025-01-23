package lk.ijse.ecommerceprojectnew;

import com.google.gson.Gson;
import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.ecommerceprojectnew.dto.AdminDTO;

import javax.sql.DataSource;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@WebServlet(name = "adminDelete", value = "/delete-admin")
public class AdminDeleteServlet extends HttpServlet {

    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("delete admin servlet");
        // Parse the request parameter (username to delete)
        String username = req.getParameter("username");
        System.out.println("Username received for deletion: " + username);

        if (username == null || username.trim().isEmpty()) {
            resp.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            resp.getWriter().write("Invalid or missing 'username' parameter.");
            return;
        }

        try (Connection connection = dataSource.getConnection()) {
            String sql = "DELETE FROM admin WHERE username = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, username);

            int rowsAffected = preparedStatement.executeUpdate();
            if (rowsAffected > 0) {
                resp.setStatus(HttpServletResponse.SC_OK);
                resp.getWriter().write("Admin deleted successfully.");
            } else {
                resp.setStatus(HttpServletResponse.SC_NOT_FOUND);
                resp.getWriter().write("Admin not found.");
            }
        } catch (SQLException e) {
            resp.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            resp.getWriter().write("Error: " + e.getMessage());
            e.printStackTrace();
        }
    }
}
