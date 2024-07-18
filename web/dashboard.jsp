<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    
    <!-- Link to Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS for changing font to Times New Roman -->
    <style>
        body {
            font-family: 'Times New Roman', Times, serif;
        }

        /* Custom style for the black logout button */
        .black-btn {
            background-color: #000;
            color: #fff;
        }

        /* Style for the logout button on hover (optional) */
        .black-btn:hover {
            background-color: #333;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="mt-5">FASHION</h1>
        <ul class="list-group">
            <a href="item" class="list-group-item list-group-item-action">Collection management</a>
            <a href="faqs" class="list-group-item list-group-item-action">FAQs</a>
        </ul>
        <a href="main?action=2" class="btn black-btn mt-3">Logout</a>
    </div>

    <!-- Link to Bootstrap JavaScript (optional) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
