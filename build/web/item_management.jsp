<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Link your custom CSS file -->
        <link href="css/item.css" rel="stylesheet" type="text/css">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <style>
            /* Custom CSS for transparent navbar */
            .navbar {
                background-color: transparent !important;
            }

            .navbar .navbar-nav .nav-item .nav-link {
                color: white !important;
                font-weight: bold;
            }

            .navbar .navbar-nav .nav-item .nav-link:hover {
                color: lightgray !important;
            }

            .navbar .btn {
                background-color: transparent !important;
                border: none;
                color: white !important;
                font-weight: bold;
            }

            .navbar .btn:hover {
                color: lightgray !important;
            }

            /* Custom CSS for black, Times New Roman, and evenly spaced links */
            .navbar .navbar-nav {
                display: flex;
                justify-content: space-evenly;
                align-items: center; /* Center vertically */
                width: 100%;
            }

            .navbar .navbar-nav .nav-item .nav-link,
            .navbar .btn {
                color: black !important;
                font-family: "Times New Roman", Times, serif;
                font-size: 24px; /* Adjust the font size as needed */
                padding: 0; /* Remove default padding */
            }

            /* Custom CSS for left-aligning the Home button */
            .navbar .navbar-nav #home {
                text-align: left;
                width: auto;
            }

            /* Custom CSS for horizontal lines */
            .horizontal-line {
                border-top: 2px solid black;
                width: 100%;
            }

            /* Custom CSS for item boxes */
            .item-box {
                width: calc(33.33% - 30px); /* 3 boxes per row with spacing */
                margin: 15px;
                display: inline-block;
                vertical-align: top;
            }
        </style>
    </head>
    <body>
        <header>
            <div class="page-header" style="text-align: center;">
                <span style="font-size: 50px;">FASHION</span>
            </div>
        </header>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <hr class="horizontal-line">
                            <a class="btn" href="main?action=1" id="home">Home</a>
                            <hr class="horizontal-line">
                        </li>
                        <li class="nav-item">
                            <hr class="horizontal-line">
                            <a href="viewcart.jsp" class="btn" id="view-cart">View Cart</a>
                            <hr class="horizontal-line">
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div id="search-warning" class="alert alert-warning" style="display: none;">
            Please enter a search keyword before clicking Search.
        </div>
        <div class="container mt-4">
            <h1></h1> <!-- Removed "Collection Management" here -->
            <div class="row" id="product-list">
                <c:forEach var="item" items="${list}">
                    <div class="col-md-4 item-box" data-item-id="${item.itemID}">
                        <div class="card">
                            <img src="${item.urlPath}" class="card-img-top product-img" alt="${item.itemName}">
                            <div class="card-body">
                                <h5 class="card-title">${item.itemName}</h5>
                                <p class="card-text">ID: ${item.itemID}</p>
                                <p class="card-text card-price">Price: ${item.price}$</p>
                                <a href="edit?itemId=${item.itemID}" class="btn btn-primary" style="background-color: black; border-color: black;">Edit</a><br><br>

                                <a href="#" class="btn btn-dark" onclick="addToCart('${item.itemID}')">Add to cart</a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        <script>
    function addToCart(itemId) {
        $.ajax({
            url: 'addcart?cid=' + itemId,
            type: 'GET',
            success: function () {
                alert('Item added to cart successfully!');
            },
            error: function () {
                alert('Error occurred while adding item to cart.');
            }
        });
    }
        </script>
    </body>
</html>
