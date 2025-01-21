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
            PreparedStatement prsm = connection.prepareStatement("SELECT * FROM users WHERE username=? AND password=?");
            prsm.setString(1, username);
            prsm.setString(2, password);

            if (prsm.executeQuery().next()) {

                resp.sendRedirect("loginHome.jsp?message=Login%20Successful");
            }else {
                resp.sendRedirect("login.jsp?error=Invalid%20username%20or%20password");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
}
