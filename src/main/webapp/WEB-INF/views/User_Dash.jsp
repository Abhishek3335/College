<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Inquiry Form</title>
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
            max-width: 550px; /* Limit form width for better appearance */
            padding: 20px;
            background-color: white; /* White background for form */
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
            border-radius: 5px;
        }
        label {
            display: block;
            margin-bottom: 5px;
        }
        input[type="text"],
        input[type="email"],
        input[type="date"],
        textarea,
        select {
            width: 96%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            margin: 5px 0;
        }
        select {
            width: 100%;
        }
        input[type="submit"] {
            background-color: #007BFF; /* Blue background */
            color: white; /* White text */
            border: none;
            border-radius: 4px;
            padding: 10px 20px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }
    </style>
</head>
<h2>Submit Inquiry !</h2>
<body>
<form action="inquiry" method="post">
    <div>
        <label for="name">Username:</label>
        <input type="text" id="name" name="name" required/>
    </div>
    <div>
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required/>
    </div>
    <div>
        <label for="date">Date of Inquiry:</label>
        <input type="date" id="date" name="date" value="<%= java.time.LocalDate.now() %>" readonly />
    </div>
    <div>
        <label for="type">Inquiry Type:</label>
        <select id="type" name="type">
            <option value="Acedemic">Acedemic</option>
            <option value="Addmission">Addmission</option>
            <option value="Financial Aid">Financial Aid</option>
        </select>
    </div>
    <div>
        <label for="description">Description:</label>
        <textarea id="description" name="description" required></textarea>
    </div>
    <div>
        <input type="submit" value="Submit" />
    </div>
</form>
</body>
</html>
