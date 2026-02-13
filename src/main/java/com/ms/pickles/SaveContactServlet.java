package com.mspickles.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/saveContact")
public class SaveContactServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String mobile = request.getParameter("mobile");

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        Connection conn = null;
        PreparedStatement ps = null;

        try {
            // Load PostgreSQL driver
            Class.forName("org.postgresql.Driver");

            // 🔹 IMPORTANT: Change hostname if needed
            // If using docker-compose → use "postgres"
            // If running locally → use "localhost"
            conn = DriverManager.getConnection(
                    "jdbc:postgresql://localhost:5432/mspickles",
                    "postgres",
                    "admin"
            );

            // Insert into table "names"
            String sql = "INSERT INTO names(name, mobile) VALUES (?, ?)";
            ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, mobile);

            int rows = ps.executeUpdate();

            if (rows > 0) {
                // Success → Redirect back to home
                response.sendRedirect("index.jsp");
            } else {
                out.println("<h3 style='color:red;'>Insert failed.</h3>");
            }

        } catch (Exception e) {

            // Show real error
            out.println("<h2 style='color:red;'>DB ERROR:</h2>");
            out.println("<pre>");
            e.printStackTrace(out);
            out.println("</pre>");

        } finally {
            try { if (ps != null) ps.close(); } catch (Exception ignored) {}
            try { if (conn != null) conn.close(); } catch (Exception ignored) {}
        }
    }
}

