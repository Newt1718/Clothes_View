<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Edit Item</title>
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
            form {
                width: 300px;
                margin: 0 auto;

                display: flex;
                flex-direction: column;
                align-items: flex-start;
            }
            label {
                display: block;
                margin-top: 10px;
            }
            input[type="text"],
            select {
                width: 100%;
                padding: 8px;
                margin-top: 5px;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
            }
            input[type="submit"] {
                background-color: #4CAF50;
                color: white;
                padding: 10px 20px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }
            input[type="submit"]:hover {
                background-color: #45a049;
            }
            .submit-button {
                background-color: black;
                align-self: center;
                margin-top: 20px;
            }
        </style>
    </head>
    <body>
        <h1>Edit</h1>
        <form action="edit" method="post">
            <input type="hidden" name="itemId" value="${item.itemID}" readonly />
            <label>Item ID:</label>
            <input type="text" value="${item.itemID}" readonly /><br>
            <label>Item Name:</label>
            <input type="text" name="itemName" value="${item.itemName}" /><br>
            <label>Price($):</label>
            <input type="text" name="itemPrice" value="${item.price}" /><br>
            <label>Category:</label>
            <select name="categoryId">
                <c:forEach var="category" items="${categories}">
                    <option value="${category.cateId}" ${item.getCateId() == category.getCateId() ? 'selected' : ''}>${category.getCateName()}</option>
                </c:forEach>
            </select><br>
            <input type="submit" class="submit-button" value="Save" />
        </form>
    </body>
</html>
