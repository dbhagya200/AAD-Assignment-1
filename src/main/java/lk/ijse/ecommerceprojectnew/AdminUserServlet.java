package lk.ijse.ecommerceprojectnew;

import com.google.gson.Gson;
import jakarta.annotation.Resource;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.ecommerceprojectnew.dto.UserDTO;

import javax.sql.DataSource;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "adminUser", value = "/a-users")
public class AdminUserServlet extends HttpServlet {
    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;

   List<UserDTO> userList = new ArrayList<>();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            Connection connection = dataSource.getConnection();
            String sql = " SELECT username, email FROM users;";
            PreparedStatement prsm = connection
                    .prepareStatement(sql);
            ResultSet result = prsm.executeQuery();
            UserDTO userDTO;
            int count=0;
            while (result.next()) {
                count++;
                System.out.println(count);
                 userDTO = new UserDTO(
                        result.getString(1),
                        result.getString(2)
                );
                    userList.add(userDTO);

            }
            System.out.println("user DTO : " + userList);

            Gson gson = new Gson();
            String json = gson.toJson(userList);
            userList.clear();
            resp.setContentType("application/json");
            resp.setCharacterEncoding("UTF-8");
            PrintWriter out = resp.getWriter();
            out.print(json);

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
