package com.uniquedeveloper.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/manageHeritageServlet")
public class ManageHeritageServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Database credentials
    private static final String DB_URL = "jdbc:mysql://localhost:3306/heritageDB";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "password";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String category = request.getParameter("category");
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String action = request.getParameter("action");

        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD)) {
            if ("add".equals(action)) {
                addEntry(conn, category, title, description);
            } else if ("update".equals(action)) {
                updateEntry(conn, category, title, description);
            } else if ("delete".equals(action)) {
                deleteEntry(conn, title);
            }

            response.sendRedirect("culturalManagement.jsp?status=success");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("culturalManagement.jsp?status=error");
        }
    }

    private void addEntry(Connection conn, String category, String title, String description) throws Exception {
        String sql = "INSERT INTO cultural_entries (category, title, description) VALUES (?, ?, ?)";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, category);
            stmt.setString(2, title);
            stmt.setString(3, description);
            stmt.executeUpdate();
        }
    }

    private void updateEntry(Connection conn, String category, String title, String description) throws Exception {
        String sql = "UPDATE cultural_entries SET category = ?, description = ? WHERE title = ?";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, category);
            stmt.setString(2, description);
            stmt.setString(3, title);
            stmt.executeUpdate();
        }
    }

    private void deleteEntry(Connection conn, String title) throws Exception {
        String sql = "DELETE FROM cultural_entries WHERE title = ?";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, title);
            stmt.executeUpdate();
        }
    }
}
