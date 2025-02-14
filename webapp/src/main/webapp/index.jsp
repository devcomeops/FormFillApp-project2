import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Simple validation: hardcoded user credentials
        if ("admin".equals(username) && "admin123".equals(password)) {
            response.sendRedirect("welcome.jsp"); // Redirect to a welcome page
        } else {
            request.setAttribute("errorMessage", "Invalid username or password.");
            request.getRequestDispatcher("/index.jsp").forward(request, response); // Forward back to the login page
        }
    }
}

