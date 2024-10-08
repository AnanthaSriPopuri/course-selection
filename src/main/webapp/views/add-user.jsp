<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add User</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4; 
            margin: 0;
            padding: 20px; 
        }

        h2 {
            text-align: center; 
            color: #333; 
        }

        .container {
            max-width: 500px; 
            margin: 0 auto;
            padding: 20px;
            background-color: #fff; 
            border-radius: 5px; 
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block; 
            margin-bottom: 5px;
            color: #555; 
        }

        input[type="text"],
        input[type="password"] {
            width: 100%; 
            padding: 10px; 
            margin-bottom: 15px; 
            border: 1px solid #ccc; 
            border-radius: 3px;
            box-sizing: border-box; 
        }

        input[type="submit"] {
            width: 100%; 
            padding: 10px; 
            background-color: #007BFF; 
            color: white;
            border: none;
            border-radius: 3px; 
            cursor: pointer; 
            font-size: 16px; 
        }

        input[type="submit"]:hover {
            background-color: #0056b3; 
        }

        .message {
            text-align: center; 
            color: #d9534f; 
            margin-bottom: 20px; 
        }

        .back-link {
            display: block;
            text-align: center; 
            margin-top: 20px; 
            color: #007BFF; 
            text-decoration: none; 
        }

        .back-link:hover {
            text-decoration: underline; 
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Register</h2>

        <!-- Display message if available -->
        <%
        String message = (String) request.getAttribute("message");
        if (message != null) {
        %>
            <p class="message"><%=message%></p>
        <%
        }
        %>

        <form action="add-user" method="post">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            <input type="submit" value="Register">
        </form>
        
        <a class="back-link" href="home">Back to Home</a>
    </div>

</body>
</html>
