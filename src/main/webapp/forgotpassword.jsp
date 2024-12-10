<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Forgot Password</title>
    <link rel="stylesheet" type="text/css" href="styles.css"> <!-- Optional: Include your CSS file -->
</head>
<body>
    <div class="container">
        <h2>Forgot Password</h2>
        <p>Please enter your email address. We will send a password reset link to your email.</p>

        <!-- Form to input email -->
        <form action="sendPasswordResetLink" method="post">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required placeholder="Enter your email address" />
            <br><br>
            <button type="submit">Send Reset Link</button>
        </form>

        <br>
        <p><a href="login.jsp">Back to Login</a></p>
    </div>

    <!-- Optional: Include JavaScript for client-side validation -->
    <script>
        // Client-side validation (if needed)
    </script>
</body>
</html>
