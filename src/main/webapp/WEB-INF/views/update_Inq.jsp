<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/logout.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
        margin: 0;
        padding: 0;
    }
    h2 {
        color: #333;
    }
    form {
        margin: 20px;
    }
    input[type="text"],
    input[type="date"],
    textarea,
    select {
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 4px;
        margin: 5px 0;
        width: 100%;
    }
    select {
        width: 100%;
    }
    input[type="submit"] {
        background-color: #007BFF; /* Blue background */
        color: white; /* White text */
        border: none;
        border-radius: 4px;
        padding: 10px 20px; /* Increase padding for better appearance */
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: #0056b3; /* Darker blue on hover */
    }
</style>
</head>
<h2>Update Inquiry</h2>
<body>
<form action="update" method="post">
    Full Name: <input type="text" name="name" value="<%=request.getAttribute("name")%>" required/>
    Email: <input type="text" name="email" value="<%=request.getAttribute("email")%>" readonly/>
    Date : <input type="date" name="date" required />
    Inquiry Type :
    <select name="type">
        <option value="Acedemic" >Acedemic</option>
        <option value="Addmission" >Addmission</option>
        <option value="Financial Aid" >Financial Aid</option>
    </select>
    Description: <textarea name="description" required><%=request.getAttribute("description")%></textarea>
    <input type="submit" value="Update" />
</form>
</body>
</html>
