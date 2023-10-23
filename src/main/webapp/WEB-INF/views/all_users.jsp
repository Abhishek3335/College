<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/logout.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Users</title>
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
        table {
            width: 95%;
            border-collapse: collapse;
            background-color: white;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
            margin: 20px;
        }
        th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #007BFF;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
    </style>
</head>
<h2> All Users </h2>
<body>
<table>
    <tr>
        <th> Name </th>
        <th> Email </th>
    </tr>
    <%
    ResultSet set=(ResultSet)request.getAttribute("set");
    while (set.next()){
    %>
    <tr>
        <td> <%=set.getString(1) %> </td>
        <td> <%=set.getString(2) %> </td>
    </tr>
    <%
    }
    %>
</table>
</body>
</html>
