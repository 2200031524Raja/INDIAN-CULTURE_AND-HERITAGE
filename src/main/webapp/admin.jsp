<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to bottom right, #4CAF50, #87CEEB);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-container {
            background: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 400px;
            text-align: center;
        }

        .login-container h1 {
            font-size: 2rem;
            color: #333;
            margin-bottom: 20px;
        }

        .login-container form {
            display: flex;
            flex-direction: column;
        }

        .login-container input {
            padding: 10px 15px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 1rem;
        }

        .login-container input:focus {
            outline: none;
            border-color: #4CAF50;
            box-shadow: 0 0 5px rgba(76, 175, 80, 0.5);
        }

        .login-container button {
            background-color: #4CAF50;
            color: white;
            padding: 12px;
            font-size: 1rem;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 15px;
        }

        .login-container button:hover {
            background-color: #45a049;
        }

        .login-container a {
            color: #4CAF50;
            text-decoration: none;
            font-size: 0.9rem;
            margin-top: 15px;
            display: block;
        }

        .login-container a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h1>Admin Login</h1>
        <form method="post">
            <input type="text" name="username" placeholder="Enter Admin Username" required>
            <input type="password" name="password" placeholder="Enter Password" required>
            <button type="submit">Login</button>
        </form>
        <a href="index.jsp">Back to Home</a>
    </div>

    <%
        // Check if form data is submitted
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (username != null && password != null) {
            // Database connection parameters
            String dbURL = "jdbc:mysql://localhost:3306/project";
            String dbUser = "root";
            String dbPassword = "387964@"; // Replace with your database password

            Connection conn = null;
            PreparedStatement stmt = null;

            try {
                // Load the JDBC driver
                Class.forName("com.mysql.cj.jdbc.Driver");

                // Establish connection to the database
                conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

                // Query to verify admin credentials
                String query = "SELECT * FROM admin WHERE username = ? AND password = ?";
                stmt = conn.prepareStatement(query);
                stmt.setString(1, username);
                stmt.setString(2, password);

                ResultSet rs = stmt.executeQuery();

                if (rs.next()) {
                    // Login successful, redirect to dashboard
                    response.sendRedirect("admin.html");
                } else {
                    // Login failed, show error message
                    out.println("<script>alert('Invalid username or password!');</script>");
                }
            } catch (Exception e) {
                e.printStackTrace();
                out.println("<script>alert('An error occurred while processing your request.');</script>");
            } finally {
                try {
                    if (stmt != null) stmt.close();
                    if (conn != null) conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
        }
    %>
</body>
</html>
