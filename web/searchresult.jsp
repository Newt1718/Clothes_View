<%-- 
    Document   : searchresult
    Created on : Aug 21, 2023, 11:10:33 AM
    Author     : Tri Nhan
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="css/item.css" rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
<style>
  /* Định dạng bảng */
  table {
    width: 100%;
    border-collapse: collapse;
  }

  th, td {
    padding: 10px;
    text-align: center;
    border: 1px solid #ddd;
  }

  /* Định dạng ảnh */
  img {
    max-width: 150px;
    max-height: 150px;
  }
  /* Cải thiện giao diện sản phẩm */
.card {
    border: none;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    transition: transform 0.2s;
}

.card:hover {
    transform: translateY(-5px);
}

.card-body {
    padding: 1rem;
}

.card-title {
    font-size: 1.25rem;
    margin-bottom: 0.5rem;
}

.card-text {
    font-size: 1rem;
    color: #777;
    margin-bottom: 0.5rem;
}

.card-price {
    color: red;
    font-size: 1.25rem;
    font-weight: bold;
    margin-bottom: 1rem;
}

.card-buttons {
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.card-buttons button {
    flex: 1;
    margin-right: 0.5rem;
}

/* Hiệu ứng nút Add to Cart */
.card-buttons button.btn-success {
    background-color: #28a745;
    border-color: #28a745;
    transition: background-color 0.2s, border-color 0.2s;
}

.card-buttons button.btn-success:hover {
    background-color: #218838;
    border-color: #218838;
}

/* Tùy chỉnh kích thước ảnh sản phẩm */
.card-img-top {
    width: 100%;
    height: 180px;
    object-fit: cover;
}

</style>

<!-- ... -->
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <!-- ... -->
    </nav>
    <div class="container mt-4">
        <h1>Search Results</h1>
        <div class="row">
            <c:forEach var="item" items="${list}">
                <div class="col-md-3 mb-4">
                    <div class="card">
                        <img src="${item.getUrlPath()}" class="card-img-top" alt="${item.getItemName()}">
                        <div class="card-body">
                            <h5 class="card-title">${item.getItemName()}</h5>
                            <p class="card-text">ID: ${item.getItemID()}</p>
                            <p class="card-text card-price">Price: ${item.getPrice()}$</p>
                            <a href="edit?itemId=${item.getItemID()}" class="btn btn-primary">Edit</a>
                            <button type="button" onclick="addToCart('${item.getItemID()}')" class="btn btn-success">Add to Cart</button>
                        </div>
                    </div>
                        
                </div>
                        
            </c:forEach>
            <div class="row">
            <div class="col-md-12 text-center">
                <a href="main?action=3" class="btn btn-secondary">Back to Item Management</a>
            </div>
        </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
