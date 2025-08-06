<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Search Result</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: #f4f7f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background: #ffffff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 6px 16px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
            text-align: center;
        }

        h2 {
            color: #333333;
            margin-bottom: 20px;
        }

        p {
            font-size: 16px;
            color: #555555;
            margin: 10px 0;
        }

        strong {
            color: #222;
        }

        .not-found {
            color: #c0392b;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Search Result</h2>

        <c:if test="${employee != null}">
            <p><strong>ID:</strong> ${employee.id}</p>
            <p><strong>Name:</strong> ${employee.name}</p>
            <p><strong>Designation:</strong> ${employee.designation}</p>
            <p><strong>Salary:</strong> ₹${employee.salary}</p>
        </c:if>

        <c:if test="${employee == null}">
            <p class="not-found">No employee found with the given ID.</p>
        </c:if>
    </div>
</body>
</html>
