<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="/WEB-INF/views/logout.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Response</title>
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
        select, input[type="date"], input[type="submit"] {
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
            margin-right: 10px;
        }
        select, input[type="date"] {
            width: 200px;
        }
        th, td {
            text-align: center;
        }
        th:nth-child(6) {
            background-color: #007BFF;
        }
        .form-button {
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 4px;
            padding: 5px 10px;
            cursor: pointer;
        }
    </style>
</head>
<meta charset="UTF-8">
<title>All Response</title>
</head>
<h2>Filter Data</h2>
<body>
<form action="filter" method="post">
Date of Inquiry : <input type="date" name="date"  />
Inquiry Type : <select name="type">
<option value="Acedemic" required>Acedemic</option>
<option value="Addmission" required>Addmission</option>
<option value="Financial Aid" required>Financial Aid</option>
<input type="submit" class="form-button" value="Apply" />
</form>
<form action="AllInq" method="post" />
<input type="submit"  class="form-button" value="All Inquiries" />
</form>
	<h2>All Inquiry</h2>
	<table>
		<tr>
			<th>Name</th>
			<th>Email</th>
			<th>Date</th>
			<th>Type</th>
			<th>Description</th>
			<th>Actions</th>
		</tr>

		<%
		ResultSet result = (ResultSet) request.getAttribute("result");
		while (result.next()) {
		%>
		<tr>
			<td><%=result.getString(1)%></td>
			<td><%=result.getString(2)%></td>
			<td><%=result.getString(3)%></td>
			<td><%=result.getString(4)%></td>
			<td><%=result.getString(5)%></td>
			<td><a href="delete?email=<%=result.getString(2)%>"> Delete
			</a>
			<td><a
				href="update?email=<%=result.getString(2)%>&&name=<%=result.getString(1)%>&&type=<%=result.getString(4)%>&&description=<%=result.getString(5)%>">
					Update </a> <%
 }
 %> <%
 if (request.getAttribute("delete") != null) {
 	out.println(request.getAttribute("delete"));
 }
 %>
	</table>
</body>
</html>