package lk.ijse.ecommerceprojectnew;

import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import javax.sql.DataSource;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(name = "LoginServlert", value = "/login")
public class LoginServlert extends HttpServlet {

    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String username = req.getParameter("username");
        String password = req.getParameter("password");
        System.out.println("username = " + username + " password = " + password);

        try {
            Connection connection = dataSource.getConnection();
            PreparedStatement adminStmt = connection.prepareStatement(
                    "SELECT * FROM admin WHERE username=? AND password=?"
            );
            adminStmt.setString(1, username);
            adminStmt.setString(2, password);
            ResultSet adminResult = adminStmt.executeQuery();

            if (adminResult.next()) {
                resp.sendRedirect("adminHome.jsp?message=Welcome%20Admin");
                return;
            }

            PreparedStatement userStmt = connection.prepareStatement(
                    "SELECT * FROM users WHERE username=? AND password=?"
            );
            userStmt.setString(1, username);
            userStmt.setString(2, password);
            ResultSet userResult = userStmt.executeQuery();

            if (userResult.next()) {
                resp.sendRedirect("loginHome.jsp?message=Welcome%20User");
                return;
            }

            resp.sendRedirect("login.jsp?error=Invalid%20username%20or%20password");

        } catch (SQLException e) {
            e.printStackTrace();
            resp.sendRedirect("login.jsp?error=Something%20went%20wrong");
        }

    }
}
