/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AdminController;

import Database.DatabaseConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
@WebServlet(name = "AdminLogin", urlPatterns = {"/AdminLogin"})
public class AdminLogin extends HttpServlet {

    private String user;
    private String pass;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        String username = request.getParameter("login");
        String password = request.getParameter("password");

        try (PrintWriter pw = response.getWriter()) {
            try (Connection con = DatabaseConnection.initializeDatabase()) {
                String query = "select id, username, password, fname from adminlogin where username = ? and password = ?";
                try (PreparedStatement pst = con.prepareStatement(query)) {
                    pst.setString(1, username);
                    pst.setString(2, password);
                    try (ResultSet rs = pst.executeQuery()) {
                        if (rs.next()) {
                            int id = rs.getInt(1);
                            String name = rs.getString(4);

                            HttpSession adminSession = request.getSession();
                            adminSession.setAttribute("AdminUsername", username);
                            adminSession.setAttribute("AdminID", id);
                            adminSession.setAttribute("AdminName", name);

                            pw.println("<script type=\"text/javascript\">");
                            pw.println("alert('Login Successfully..!');");
                            pw.println("window.location.href = \"AdminDashboard.jsp\";");
                            pw.println("</script>");
                            return;
                        }
                    }
                }
            }

            pw.println("<script type=\"text/javascript\">");
            pw.println("alert('Username or Password is Incorrect..!');");
            pw.println("window.location.href = \"AdminLogin.jsp\";");
            pw.println("</script>");
        } catch (Exception e) {
            // Swallowing exceptions hides errors; rethrowing as ServletException for visibility
            throw new ServletException(e);
        }
    }

}
