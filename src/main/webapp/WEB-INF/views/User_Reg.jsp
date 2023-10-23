<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
    <title>Homepage</title>
       <meta charset="UTF-8">
    <title>Homepage</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            text-align: center;
            margin: 0;
            padding: 0;
        }

        h2 {
            color: #007BFF;
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
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
            box-sizing: border-box;
            background-color: white; /* White background for input fields */
        }

        .form-button {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            background-color: #007BFF;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .form-button:hover {
            background-color: #0056b3;
        }

        .form-button:focus {
            outline: none;
        }
    </style>
</head>
<h2>Create User</h2>
<body>
<form action="UserReg" method="post">
    <label for="name">Full Name:</label>
    <input type="text" id="name" name="name" />
    
    <label for="email">Email:</label>
    <input type="text" id="email" name="email" />
    
    <label for="password">Password:</label>
    <input type="text" id="password" name="password" />

    <input type="submit" value="Register" />
</form>
<%
if(request.getAttribute("Nreg")!=null){
    out.println(request.getAttribute("Nreg"));
}
%>
</body>
</html>
