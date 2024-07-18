<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="css/faqcontent.css">
    <title>FAQ Item Content</title>

    <!-- Bootstrap CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- Custom CSS -->
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
        }
        h1 {
            margin-bottom: 20px;
            text-align: center;
        }
        table {
            width: 80%;
            margin: 0 auto;
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ccc;
        }
        .error {
            color: red;
            font-weight: bold;
        }
        a {
            display: block;
            width: 100px;
            margin: 20px auto;
            text-align: center;
            text-decoration: none;
            color: white;
            background-color: #4CAF50;
            padding: 10px;
            border-radius: 4px;
        }
    </style>
</head>
<body>
    <h1>FAQ Item Content</h1>
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Customer Name</th>
                <th>Customer Content</th>
                <th>Item ID</th>
            </tr>
        </thead>
        <tbody>
            <c:if test="${not empty faqData}">
                <c:forEach var="f" items="${requestScope.faqData}">
                    <tr>
                        <td>${f.id}</td>
                        <td>${f.custName}</td>
                        <td>${f.custContent}</td>
                        <td>${f.itemId}</td>
                    </tr>
                </c:forEach>
            </c:if>
        </tbody>
    </table>

    <c:set var="errorMsg" value="${requestScope.ERROR}"/>
    <c:if test="${not empty errorMsg}">
        <p class="error">${errorMsg}</p>
    </c:if>

    <a href="faqs">Back</a>
</body>
</html>
