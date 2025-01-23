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
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "adminServlet", value = "/admin")
public class AdminServlet extends HttpServlet {

    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;

    List<AdminDTO> adminList = new ArrayList<>();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("username");
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        System.out.println("name = " + name + " email = " + email + " password = " + password);

        try {
            Connection connection = dataSource.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO admin VALUES (?,?,?)");
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, email);
            preparedStatement.setString(3, password);


//            if (preparedStatement.executeUpdate() > 0) {
//                resp.sendRedirect("adminHome.jsp?message=Registration+Successful"); // Use URL encoding for '+'
//                System.out.println("Registration Successful");
//            } else {
//                resp.sendRedirect("adminHome.jsp?error=Registration+Failed"); // Use URL encoding for '+'
//            }

            if (preparedStatement.executeUpdate() > 0) {
                resp.sendRedirect("adminHome.jsp?status=success"); // Notify success
            } else {
                resp.sendRedirect("adminHome.jsp?status=failure"); // Notify failure
            }

        } catch (SQLException e) {
            resp.sendRedirect("adminHome.jsp?error=Registration+Failed"+e.getMessage()); // Use URL encoding for '+'
            e.printStackTrace();
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            Connection connection = dataSource.getConnection();
            String sql = " SELECT username, email FROM admin;";
            PreparedStatement prsm = connection.prepareStatement(sql);
            ResultSet result = prsm.executeQuery();
            while (result.next()) {
                AdminDTO adminDTO = new AdminDTO(
                        result.getString(1),
                        result.getString(2)
                );
                adminList.add(adminDTO);

            }
            Gson gson = new Gson();
            String json = gson.toJson(adminList);
            adminList.clear();
            resp.setContentType("application/json");
            resp.setCharacterEncoding("UTF-8");
            PrintWriter out = resp.getWriter();
            out.print(json);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
