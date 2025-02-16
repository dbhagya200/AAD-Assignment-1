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

@WebServlet(name = "registerServlet", value = "/user-signup")
public class SignUpServlet extends HttpServlet {
    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("username");
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        System.out.println("name = " + name + " email = " + email + " password = " + password);

        try {
            Connection connection = dataSource.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO users VALUES (?,?,?)");
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, email);
            preparedStatement.setString(3, password);


//            if (preparedStatement.executeUpdate() > 0) {
//                resp.sendRedirect("signup.jsp?message=Registration Successful");
//                System.out.println( "Registration Successful");
//            }
//
//
//        } catch (SQLException e) {
//            resp.sendRedirect("signup.jsp?error=Registration Failed");
//            e.printStackTrace();
//
//        }



            if (preparedStatement.executeUpdate() > 0) {
                resp.sendRedirect("signup.jsp?message=Registration+Successful"); // Use URL encoding for '+'
                System.out.println("Registration Successful");
            } else {
                resp.sendRedirect("signup.jsp?error=Registration+Failed"); // Use URL encoding for '+'
            }
        } catch (SQLException e) {
            resp.sendRedirect("signup.jsp?error=Registration+Failed"); // Use URL encoding for '+'
            e.printStackTrace();
        }
    }
}