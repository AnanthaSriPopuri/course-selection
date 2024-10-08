<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
    <title>User Dashboard</title>
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
            max-width: 600px;
            margin: 0 auto;
            padding: 20px; 
            background-color: #fff; 
            border-radius: 5px; 
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); 
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
        <h2>User Dashboard</h2>

        <%
        // Retrieve the user object and message from the request scope
        com.jfsd_lab.exp_6.model.User user = (com.jfsd_lab.exp_6.model.User) request.getAttribute("user");
        String message = (String) request.getAttribute("message");

        if (message != null) {
        %>
            <p class="message"><%=message%></p>
        <%
        }
        %>

        <p>
            Welcome to your dashboard,<br>
            <%=user.getUsername()%>! You are a regular user.
        </p>

        <a href="<%=request.getContextPath()%>/logout">Logout</a>
    </div>

</body>
</html>
