<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4; /* Light background color */
            margin: 0;
            padding: 20px; /* Padding for the body */
        }

        h2 {
            text-align: center; /* Center the heading */
            color: #333; /* Dark text color */
        }

        .container {
            max-width: 600px; /* Maximum width for the dashboard */
            margin: 0 auto; /* Center the container */
            padding: 20px; /* Padding inside the container */
            background-color: #fff; /* White background */
            border-radius: 5px; /* Rounded corners */
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); /* Soft shadow */
        }

        .message {
            text-align: center; /* Center the message */
            color: #d9534f; /* Red color for error messages */
            margin-bottom: 20px; /* Space below message */
        }

        p {
            font-size: 16px; /* Font size for paragraphs */
            color: #555; /* Gray text color */
            text-align: center; /* Center text */
        }

        a {
            display: block; /* Display link as block */
            text-align: center; /* Center the link */
            margin-top: 20px; /* Space above link */
            color: #007BFF; /* Link color */
            text-decoration: none; /* Remove underline */
            font-size: 18px; /* Font size for link */
        }

        a:hover {
            text-decoration: underline; /* Underline on hover */
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Admin Dashboard</h2>

        <%
        // Retrieve user from session
        com.jfsd_lab.exp_6.model.User user = (com.jfsd_lab.exp_6.model.User) session.getAttribute("user");
        String message = (String) session.getAttribute("message");

        if (message != null) {
        %>
            <p class="message"><%=message%></p>
        <%
        // Clear message after displaying
        session.removeAttribute("message");
        }

        if (user != null) {
        %>
            <p>ID: <%=user.getId()%></p>
            <br>
            <p>Welcome Admin,<br>
            <%=user.getName()%>! You have admin privileges.</p>
        <%
        } else {
        %>
            <p>User not found in session. Please log in again.</p>
        <%
        }
        %>

        <a href="<%=request.getContextPath()%>/logout">Logout</a>
    </div>

</body>
</html>
