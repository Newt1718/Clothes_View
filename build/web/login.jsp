<%-- 
    Document   : login
    Created on : Aug 9, 2023, 3:37:28 PM
    Author     : Tri Nhan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Link to Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f0f0f0;
            font-family: Arial, sans-serif;
        }

        .login-container {
            text-align: center;
            margin-top: 100px;
        }

        h2 {
            font-size: 24px;
            color: #333;
            margin-bottom: 20px;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 3px;
            background-color: transparent; /* Remove blue background */
        }

        button[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #000; /* Black background */
            color: #fff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        button[type="submit"]:hover {
            background-color: #333; /* Darker black on hover */
        }
    </style>
    <title>FASHION</title>
</head>
<body>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-4">
                <div class="login-container">
                    <h2>FASHION</h2>
                    <form action="login" method="post">
                        <input type="text" name="txtUser" placeholder="Username" required>
                        <input type="password" name="txtPass" placeholder="Password" required>
                        <button type="submit">Login</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
