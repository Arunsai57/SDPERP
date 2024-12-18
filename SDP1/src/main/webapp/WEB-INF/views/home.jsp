<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>KL University ERP</title>
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
            font-size: 48px;
            font-weight: bold;
            margin-bottom: 20px;
            color: #8B0000;  /* Brownish-red text */
        }

        p {
            font-size: 20px;
            margin-bottom: 30px;
            color: #8B0000;  /* Brownish-red text */
        }

        .button-container {
            display: flex;
            justify-content: center;
            gap: 20px;
        }

        .button-container a {
            background-color: #8B0000;  /* Brownish-red button */
            color: white;
            padding: 15px 30px;
            font-size: 18px;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .button-container a:hover {
            background-color: #A52A2A;  /* Lighter brown-red on hover */
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
    <p>Welcome to the official ERP system for KL University</p>
</header>

<div class="main-content">
    <h1>Welcome to KL University</h1>
    <p>Manage your academic and administrative tasks efficiently</p>
    <div class="button-container">
        <a href="<%=request.getContextPath() %>/login">Sign In</a>  <!-- Link to Sign In page -->
        <a href="<%=request.getContextPath() %>/signup">Sign Up</a>  <!-- Link to Sign Up page -->
    </div>
</div>

<footer>
    <p>&copy; 2024 KL University</p>
</footer>

</body>
</html>
