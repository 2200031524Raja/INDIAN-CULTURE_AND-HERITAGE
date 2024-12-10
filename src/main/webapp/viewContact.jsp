<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*, java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Contact Submissions</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #e6f7ff;
            margin: 0;
            padding: 0;
            color: #333;
        }

        .container {
            max-width: 900px;
            margin: 50px auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 15px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease-in-out;
        }

        .container:hover {
            transform: scale(1.02);
        }

        h1 {
            text-align: center;
            color: #003366;
            font-size: 36px;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        th, td {
            text-align: left;
            padding: 12px;
            border: 1px solid #ddd;
            transition: background-color 0.3s ease;
        }

        th {
            background-color: #003366;
            color: white;
            font-size: 18px;
        }

        td {
            background-color: #f9f9f9;
            font-size: 16px;
        }

        tr:nth-child(even) td {
            background-color: #f1f1f1;
        }

        tr:hover td {
            background-color: #d1e7ff;
        }

        .empty-message {
            text-align: center;
            color: #888;
            font-size: 18px;
            margin-top: 40px;
        }

        .btn-back {
            display: block;
            margin: 30px auto;
            padding: 12px 25px;
            background-color: #003366;
            color: white;
            border: none;
            border-radius: 8px;
            text-align: center;
            font-size: 18px;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }

        .btn-back:hover {
            background-color: #0066cc;
        }

    </style>
</head>
<body>
    <div class="container">
        <h1>Problem Submissions</h1>
        <%
            // Database connection details
            String url = "jdbc:mysql://localhost:3306/project"; // Change to your database name
            String user = "root"; // Your DB username
            String password = "387964@"; // Your DB password

            Connection conn = null;
            Statement stmt = null;
            ResultSet rs = null;

            try {
                // Load JDBC driver and establish a connection
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection(url, user, password);

                // SQL query to fetch contact data
                String selectQuery = "SELECT id, name, email, message FROM contacts";
                stmt = conn.createStatement();
                rs = stmt.executeQuery(selectQuery);

                // Check if there are any results
                if (!rs.isBeforeFirst()) {
                    out.println("<p class='empty-message'>No contact submissions found.</p>");
                } else {
        %>
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Message</th>
            </tr>
            <%
                // Loop through the results and display them in a table
                while (rs.next()) {
                    int id = rs.getInt("id");
                    String name = rs.getString("name");
                    String email = rs.getString("email");
                    String message = rs.getString("message");
                    
            %>
            <tr>
                <td><%= id %></td>
                <td><%= name %></td>
                <td><%= email %></td>
                <td><%= message %></td>
            </tr>
            <%
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<p>Error: " + e.getMessage() + "</p>");
        } finally {
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }
        }
        %>
        </table>
        <a href="admin.html" class="btn-back">Back to Home</a>
    </div>
</body>
</html>
