<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Cultural Heritage</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #FF8C00, #FF4500);
            color: #fff;
        }

        header {
            background-color: #222;
            color: #fff;
            padding: 20px;
            text-align: center;
            font-size: 1.5rem;
            text-transform: uppercase;
            letter-spacing: 2px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.3);
        }

        nav {
            background-color: #444;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        nav a {
            color: #fff;
            text-decoration: none;
            margin: 0 10px;
            font-size: 1rem;
        }

        nav a:hover {
            color: #FF8C00;
            text-decoration: underline;
        }

        main {
            padding: 40px 20px;
            text-align: center;
        }

        h1 {
            font-size: 2.5rem;
            margin-bottom: 20px;
        }

        form {
            background: #fff;
            color: #333;
            border-radius: 10px;
            padding: 20px;
            max-width: 600px;
            margin: 20px auto;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        form label {
            display: block;
            margin-bottom: 10px;
            font-size: 1.2rem;
            text-align: left;
        }

        form input, form textarea, form select {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1rem;
        }

        form button {
            background-color: #FF4500;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 1rem;
            cursor: pointer;
            transition: background 0.3s;
        }

        form button:hover {
            background-color: #FF8C00;
        }

        table {
            width: 90%;
            margin: 20px auto;
            border-collapse: collapse;
            background: #fff;
            color: #333;
            border-radius: 5px;
        }

        table th, table td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }

        table th {
            background-color: #FF4500;
            color: #fff;
        }

        table tr:hover {
            background-color: #f2f2f2;
        }

        footer {
            background: #222;
            color: #fff;
            text-align: center;
            padding: 10px;
            position: fixed;
            bottom: 0;
            width: 100%;
            font-size: 0.9rem;
        }
    </style>
</head>
<body>

    <!-- Header -->
    <header>
        Manage Cultural Heritage
    </header>

    <!-- Navigation -->
    <nav>
        <a href="admin.html">Dashboard</a>
        <a href="index.jsp">Logout</a>
    </nav>

    <!-- Main Content -->
    <main>
        <h1>Cultural Management</h1>
        <p>Use the form below to add, update, or delete cultural information.</p>

        <!-- Form for Managing Content -->
        <form action="manageHeritageServlet" method="post">
            <label for="category">Category</label>
            <select id="category" name="category">
                <option value="art">Art</option>
                <option value="monuments">Monuments</option>
                <option value="festivals">Festivals</option>
                <option value="cuisine">Cuisine</option>
                <option value="attire">Traditional Attire</option>
            </select>

            <label for="title">Title</label>
            <input type="text" id="title" name="title" placeholder="Enter a title..." required>

            <label for="description">Description</label>
            <textarea id="description" name="description" rows="5" placeholder="Enter detailed description..." required></textarea>

            <button type="submit" name="action" value="add">Add Entry</button>
            <button type="submit" name="action" value="update">Update Entry</button>
            <button type="submit" name="action" value="delete">Delete Entry</button>
        </form>

        <!-- Existing Entries -->
        <h2>Existing Heritage Entries</h2>
        <table>
            <thead>
                <tr>
                    <th>Category</th>
                    <th>Title</th>
                    <th>Description</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <%-- Example Entries (Fetch dynamically from a database) --%>
                <tr>
                    <td>Art</td>
                    <td>Madhubani Painting</td>
                    <td>A traditional art form originating from Bihar.</td>
                    <td>
                        <button>Edit</button>
                        <button>Delete</button>
                    </td>
                </tr>
                <tr>
                    <td>Festivals</td>
                    <td>Diwali</td>
                    <td>Known as the Festival of Lights, celebrated across India.</td>
                    <td>
                        <button>Edit</button>
                        <button>Delete</button>
                    </td>
                </tr>
            </tbody>
        </table>
    </main>

    <!-- Footer -->
    <footer>
        &copy; 2024 Indian Heritage & Culture | Admin Panel
    </footer>

</body>
</html>
