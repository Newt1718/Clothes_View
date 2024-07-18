<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="css/styleindex.css" rel="stylesheet" type="text/css" />

<!DOCTYPE html>
<html>
<head>
    <script src="js/script.js"></script>
    <!-- Thêm các tệp CSS của Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Thêm các tùy chỉnh CSS của bạn tại đây */
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <!-- Thêm nội dung của thanh điều hướng của bạn tại đây -->
    </nav>
    <div class="container mt-4">
        <h1>Cart Info: ${user.fullName}</h1>
        <table class="table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Total</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="i" items="${sessionScope.cart.items}">
                    <tr>
                        <td>${i.item.getItemID()}</td>
                        <td>${i.item.getItemName()}</td>
                        <td>${i.item.getPrice()}</td>
                        <td>
<form action="update" method="post">
    <input type="hidden" name="itemId" value="${i.item.getItemID()}">
    <input type="number" name="quantity" value="${i.quantity}" min="0">
    <input type="submit" value="Update" class="btn btn-dark"> <!-- Updated class to btn-dark -->
</form>
                        </td>
                        <td>${i.item.getPrice() * i.quantity}$</td>
                        <td>
<form action="remove" method="get">
    <input type="hidden" name="itemId" value="${i.item.getItemID()}">
    <input type="submit" value="Remove" class="btn btn-dark" onclick="return confirmRemove()"> <!-- Updated class to btn-dark -->
</form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

<p class="total-info text-center">Amounts: <span>${sessionScope.cart.getTotalCar()}</span></p>
<p class="total-info text-center">Totals: <span>${sessionScope.cart.getTotalMoneyPaid()}</span> USD</p>


        <br>
        <a href="item" class="btn btn-dark">Back to Search!</a> <!-- Updated class to btn-dark -->

    </div>
    <!-- Thêm tệp JavaScript của Bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
