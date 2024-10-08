<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Register Options</title>
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            background-color: #f5f5f5; /* Light gray for subtle background */
        }

        .container {
            max-width: 400px;
            width: 100%;
            padding: 30px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1); /* Light shadow for depth */
            text-align: center;
        }

        h2 {
            margin-bottom: 20px;
            color: #333; /* Neutral, dark color */
            font-size: 24px;
            font-weight: 600;
        }

        .options a {
            display: block;
            margin: 12px 0;
            padding: 12px 18px;
            text-decoration: none;
            color: #fff;
            background-color: #007BFF;
            border-radius: 8px;
            transition: background-color 0.3s ease, transform 0.2s ease;
            font-weight: 500;
            font-size: 16px;
        }

        .options a:hover {
            background-color: #0056b3;
            transform: translateY(-2px); /* Subtle hover effect */
        }

        .options a.back {
            background-color: #6c757d;
        }

        .options a.back:hover {
            background-color: #5a6268;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Select Registration Type</h2>
        <div class="options">
            <a href="add-user">Register as User</a>
            <a href="create-admin">Register as Admin</a>
            <a href="home" class="back">Back to Home</a>
        </div>
    </div>
</body>
</html>
