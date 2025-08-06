<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Employee List</title>
    <style>
        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
        }
        th, td {
            border: 1px solid #ccc;
            padding: 12px;
            text-align: left;
        }
        th {
            background-color: #007bff;
            color: white;
        }
        h2 {
            text-align: center;
        }
        .btn {
            padding: 6px 12px;
            text-decoration: none;
            color: white;
            border-radius: 4px;
        }
        .btn-update {
            background-color: #28a745;
        }
        .btn-delete {
            background-color: #dc3545;
        }
    </style>
</head>
<body>

<h2>All Employees</h2>

<form action="/find" method="post" style="text-align: center; margin-top: 20px;">
    <input type="number" name="id" placeholder="Enter Employee ID" required />
    <button type="submit" style="padding: 6px 12px;">Search</button>
</form>

<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Designation</th>
        <th>Salary</th>
        <th>Actions</th>
    </tr>

    <c:forEach var="emp" items="${employeeList}">
        <tr>
            <td>${emp.id}</td>
            <td>${emp.name}</td>
            <td>${emp.designation}</td>
            <td>${emp.salary}</td>
            <td>
                <a href="/update/${emp.id}" class="btn btn-update">Update</a>
                <a href="/delete/${emp.id}" class="btn btn-delete" onclick="return confirm('Are you sure you want to delete this employee?');">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
