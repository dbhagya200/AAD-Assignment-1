package lk.ijse.ecommerceprojectnew;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/logout")
public class LogoutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Invalidate the current session
        if (req.getSession(false) != null) {
            req.getSession().invalidate();
        }

        // Redirect to the login page (or home page)
        resp.sendRedirect("login.jsp");
    }
}
