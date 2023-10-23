<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/logout.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
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

        table {
            width: 100%;
            max-width: 400px;
            margin: 0 auto;
            border-collapse: collapse;
            background-color: rgba(255, 255, 255, 0.9);
            border: 1px solid #ccc;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        td {
            padding: 20px;
            text-align: center;
        }

        td a {
            text-decoration: none;
            color: #007BFF;
            font-size: 16px;
            display: block; /* Added to make the entire cell clickable */
            transition: background-color 0.3s;
        }

        td a:hover {
            background-color: #007BFF; /* Blue background on hover */
            color: #fff; /* White text color on hover */
        }
    </style>
</head>
<body>
<h2>Dashboard</h2>
<table>
<tr>
    <td><a href="UserReg">Create User Account</a></td>
</tr>
<tr>
    <td><a href="AllInq">View all Inquiry</a></td>
</tr>
<tr>
    <td><a href="AllUsers">All Users</a></td>
</tr>
</table>
</body>
</html>
