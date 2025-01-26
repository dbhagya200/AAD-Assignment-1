package lk.ijse.ecommerceprojectnew;

import com.google.gson.Gson;
import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.ecommerceprojectnew.model.Cart;

import javax.sql.DataSource;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(value = "/cart")
public class CartServlet extends HttpServlet {

    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;

    List<Cart> cartList = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            Connection connection = dataSource.getConnection();
            String sql = "select cart.product_name,cart.p_description,cart.quantity,cart.t_price from cart";
            PreparedStatement prsm = connection.prepareStatement(sql);
            ResultSet result = prsm.executeQuery();
            while (result.next()) {
                Cart cart = new Cart(
                        result.getString(1),
                        result.getString(2),
                        result.getString(3),
                        result.getString(4)
                );
                        cartList.add(cart);
            }
            Gson gson = new Gson();
            String json = gson.toJson(cartList);
            cartList.clear();
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


        Connection connection = null;
        try {
            connection = dataSource.getConnection();
            String sql = "insert into cart values(?,?,?,?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);

            preparedStatement.setString(1, req.getParameter("product_name"));
            preparedStatement.setString(2, req.getParameter("p_description"));
            preparedStatement.setString(3, req.getParameter("quantity"));
            preparedStatement.setString(4, req.getParameter("t_price"));
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }



        }
    }

