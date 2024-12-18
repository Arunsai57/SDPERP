<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>KL University ERP - Login</title>
    <style>
        body {
            background-color: white;  /* White background */
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #8B0000;  /* Brownish-red background */
            color: white;
            padding: 20px;
            text-align: center;
        }

        .main-content {
            text-align: center;
            padding: 50px;
        }

        h1 {
            font-size: 36px;
            font-weight: bold;
            margin-bottom: 20px;
            color: #8B0000;  /* Brownish-red text */
        }

        .login-form {
            background-color: #f4f4f4;
            border-radius: 8px;
            padding: 30px;
            width: 300px;
            margin: 0 auto;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .login-form label {
            font-size: 18px;
            margin-bottom: 10px;
            color: #8B0000;
        }

        .login-form input[type="email"],
        .login-form input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 16px;
        }

        .login-form input[type="submit"] {
            background-color: #8B0000;  /* Brownish-red submit button */
            color: white;
            padding: 15px;
            font-size: 18px;
            border-radius: 5px;
            border: none;
            width: 100%;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .login-form input[type="submit"]:hover {
            background-color: #A52A2A;  /* Lighter brown-red on hover */
        }

        .login-form a {
            display: block;
            margin-top: 20px;
            text-decoration: none;
            color: #8B0000;  /* Brownish-red link color */
            font-size: 16px;
        }

        .login-form a:hover {
            color: #A52A2A;  /* Lighter brown-red on hover */
        }

        footer {
            background-color: #8B0000;  /* Brownish-red footer */
            color: white;
            text-align: center;
            padding: 10px;
            position: fixed;
            width: 100%;
            bottom: 0;
        }
    </style>
</head>
<body>

<header>
    <h1>KL University ERP System</h1>
    <p>Login to manage your academic and administrative tasks</p>
</header>

<div class="main-content">
    <div class="login-form">
        <h2>Login</h2>

        <!-- Display error message if login fails -->
        <c:if test="${not empty error}">
            <p style="color: yellow;">${error}</p>
        </c:if>

        <form action="/login" method="POST">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required><br><br>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br><br>

            <input type="submit" value="Login">
        </form>

        <a href="/">Go to Home Page</a> <!-- Link to Home page -->
    </div>
</div>

<footer>
    <p>&copy; 2024 KL University</p>
</footer>

</body>
</html>
