<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Logout page to end the user session">
    <title>Logout - Indian Heritage</title>

    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            font-family: 'Lato', sans-serif;
            color: #343a40;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }
        .container {
            text-align: center;
            margin-top: 20%;
        }
        .message {
            font-size: 1.5rem;
            color: #28a745;
        }
        .btn {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="message">You have successfully logged out!</h1>
        <p>Thank you for visiting. We hope to see you again soon.</p>
        <a href="login.jsp" class="btn btn-primary"> go to login page</a>
    </div>

    <!-- JavaScript for Bootstrap -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>

    <%
        // Invalidate the session to log the user out
        session.invalidate();
    %>
</body>
</html>
