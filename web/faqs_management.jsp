<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <link href="css/faqs.css" rel="stylesheet" type="text/css" />
    <style>
        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .text-right {
            margin-top: 20px;
        }

        .text-right a {
            display: inline-block;
            text-decoration: none;
            color: white;
            background-color: black;
            padding: 10px 20px;
            border-radius: 4px;
        }

        .text-right a:hover {
            background-color: #ccc;
        }

        select {
    padding: 10px 20px;
    border-radius: 4px;
    border: 1px solid #ccc;
    cursor: pointer;
        }
    </style>
    <script>
        function submitForm() {
            document.getElementById("myForm").submit();
        }
    </script>
</head>
<body>
    <div class="container">
       
        <form id="myForm" action="getitemfaq">
            <select name="selectedOption" onchange="submitForm()">
                <option value="" selected disabled>Choose an item</option>
                <c:forEach var="i" items="${itemdata}">
                    <option value="${i.getItemID()}">${i.getItemName()}</option>
                </c:forEach>
            </select>
            <div class="text-right">
                <a href="main?action=1" class="menu-link">Back to Main Menu</a>
            </div>
        </form>
    </div>       
</body>
</html>
