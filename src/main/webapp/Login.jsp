<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/Dashboard_Menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Homepage</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2; /* Light gray background color */
            text-align: center;
            margin: 0;
            padding: 0;
        }

        h2 {
            color: #007BFF; /* Dark blue text color for headings */
            font-size: 24px;
            margin-top: 40px;
        }

        .login-container {
            background-color: rgba(255, 255, 255, 0.9);
            border: 1px solid #ccc;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            margin: 20px auto;
            max-width: 400px;
            padding: 20px;
        }

        .form-input {
            width: 100%;
            padding: 10px;
            margin: 5px 0; /* Adjusted margin to create space between input boxes */
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
            box-sizing: border-box; /* Ensure padding is included in width */
        }

        .form-button {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            background-color: #007BFF; /* Dark blue button color */
            color: #fff; /* White text color */
            border: none;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .form-button:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }

        .form-button:focus {
            outline: none;
        }
    </style>
</head>
<body>
<h2>Admin Login</h2>
<div class="login-container">
    <form action="admin" method="post">
        Username : <input type="text" name="email" class="form-input" />
        Password : <input type="text" name="password" class="form-input" />
        <input type="submit" value="Login" class="form-button" />
    </form>
    <%
    if(request.getAttribute("reg")!=null){
        out.println(request.getAttribute("reg"));
    }
    %>
</div>

<h2>User Login</h2>
<div class="login-container">
    <form action="User_log" method="post">
        Username : <input type="text" name="email" class="form-input" />
        Password : <input type="text" name="password" class="form-input" />
        <input type="submit" value="Login" class="form-button" />
    </form>
    <%
    if(request.getAttribute("Success")!=null){
        out.println(request.getAttribute("Success"));
    }
    %>
</div>
</body>
</html>
