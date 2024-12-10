<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*, java.util.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Confirmation</title>
    <style>
        /* Basic reset and body styles */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        h1, p {
            color: #333;
        }

        /* Header Styles */
        header {
            background-color: #003366;
            color: white;
            text-align: center;
            padding: 20px 0;
        }

        header h1 {
            font-size: 2.5rem;
            margin: 0;
        }

        /* Main content area */
        .confirmation-container {
            max-width: 800px;
            margin: 30px auto;
            padding: 20px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .confirmation-container h2 {
            font-size: 2rem;
            color: #333;
        }

        .confirmation-message {
            font-size: 1.2rem;
            color: #444;
            margin: 20px 0;
        }

        .confirmation-message strong {
            color: #003366;
        }

        /* Button Styles */
        .cta-button {
            display: inline-block;
            background-color: #ff6347;
            color: white;
            padding: 12px 30px;
            font-size: 1.2rem;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 20px;
            transition: background-color 0.3s ease;
        }

        .cta-button:hover {
            background-color: #e53e36;
        }

        /* Background Image for Confirmation */
        .confirmation-container {
            background-image: url('images/heritage-tour-background.jpg');
            background-size: cover;
            background-position: center;
            padding: 50px;
            color: white;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
        }

        /* Footer Section */
        footer {
            background-color: #003366;
            color: white;
            text-align: center;
            padding: 10px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>

<body>
    <!-- Header Section -->
    <header>
        <h1>Indian Heritage Tours</h1>
    </header>

    <!-- Confirmation Message Section -->
    <div class="confirmation-container">
        <h2>Booking Confirmed</h2>
        <%
            // Retrieve form data
            String tourName = request.getParameter("tour");
            String fullName = request.getParameter("name");
            String email = request.getParameter("email");
            String tourDate = request.getParameter("date");

            // Database connection details
            String url = "jdbc:mysql://localhost:3306/project";
            String user = "root";
            String password = "387964@";

            Connection conn = null;
            PreparedStatement pstmt = null;

            try {
                // Load JDBC driver and connect to the database
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection(url, user, password);

                // SQL insert query to store booking data
                String insertQuery = "INSERT INTO bookings (tour_name, full_name, email, tour_date) VALUES (?, ?, ?, ?)";

                pstmt = conn.prepareStatement(insertQuery);
                pstmt.setString(1, tourName);
                pstmt.setString(2, fullName);
                pstmt.setString(3, email);
                pstmt.setString(4, tourDate);

                // Execute the insert query
                int rowsAffected = pstmt.executeUpdate();

                if (rowsAffected > 0) {
                    out.println("<div class='confirmation-message'>");
                    out.println("<p>Booking confirmed for <strong>" + fullName + "</strong> on " + tourDate + " for the <strong>" + tourName + "</strong> tour.</p>");
                    out.println("<a href='index.jsp' class='cta-button'>Back to Home</a>");
                    out.println("</div>");
                } else {
                    out.println("<p>Error confirming booking. Please try again.</p>");
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
    </div>

    <!-- Footer Section -->
    <footer>
        <p>&copy; 2024 Indian Heritage Tours. All rights reserved.</p>
    </footer>
</body>

</html>
