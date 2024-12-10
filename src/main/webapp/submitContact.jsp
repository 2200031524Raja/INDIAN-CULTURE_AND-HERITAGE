<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*, java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Form Submission</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        .confirmation-container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h2 {
            color: #003366;
        }

        .cta-button {
            background-color: #ff6347;
            color: white;
            padding: 12px 30px;
            text-decoration: none;
            border-radius: 5px;
            font-size: 1.2rem;
            margin-top: 20px;
        }

        .cta-button:hover {
            background-color: #e53e36;
        }
    </style>
</head>
<body>

    <!-- Contact Form Confirmation -->
    <div class="confirmation-container">
        <h2>Message Sent Successfully</h2>
        <p>Thank you for contacting us, <strong><%= request.getParameter("name") %></strong>.</p>
        <p>We have received your message and will get back to you soon!</p>
        <a href="index.jsp" class="cta-button">Return to Home</a>
    </div>

    <%
        // Retrieve form data
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String message = request.getParameter("message");

        // Database connection details
        String url = "jdbc:mysql://localhost:3306/project";  // Change to your database name
        String user = "root";  // Your DB username
        String password = "387964@";  // Your DB password

        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            // Load JDBC driver and establish a connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, password);

            // SQL query to insert data into the contacts table
            String insertQuery = "INSERT INTO contacts (name, email, message) VALUES (?, ?, ?)";

            pstmt = conn.prepareStatement(insertQuery);
            pstmt.setString(1, name);
            pstmt.setString(2, email);
            pstmt.setString(3, message);

            // Execute the query
            int rowsAffected = pstmt.executeUpdate();

            if (rowsAffected > 0) {
                // If insertion is successful, confirm the submission
                out.println("<p>Your message has been successfully sent!</p>");
            } else {
                out.println("<p>There was an error sending your message. Please try again.</p>");
            }

        } catch (Exception e) {
            e.printStackTrace();
            out.println("<p>Error: " + e.getMessage() + "</p>");
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }
        }
    %>
</body>
</html>
