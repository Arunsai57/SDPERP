<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sign Up - KL University ERP</title>
    <style>
        body {
            background-color: #ffffff; /* White background */
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #8B0000; /* Brownish-red theme */
            color: white;
            padding: 20px;
            text-align: center;
        }

        .signup-container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            background-color: #f9f9f9;
        }

        h1 {
            color: #8B0000;
            text-align: center;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin: 10px 0 5px;
            font-weight: bold;
        }

        input, select {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        input[type="submit"] {
            background-color: #8B0000;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            margin-top: 20px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #6b0000;
        }

        .footer {
            background-color: #8B0000;
            color: white;
            text-align: center;
            padding: 10px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }

        .link {
            text-align: center;
            margin-top: 20px;
        }

        .link a {
            color: #8B0000;
            text-decoration: none;
        }

        .link a:hover {
            text-decoration: underline;
        }
    </style>
    <script>
        function validateForm(event) {
            event.preventDefault(); // Prevent form submission until validation is done

            // Get all form values
            const name = document.getElementById("name").value.trim();
            const gender = document.getElementById("gender").value;
            const dateOfBirth = document.getElementById("dateOfBirth").value;
            const email = document.getElementById("email").value.trim();
            const password = document.getElementById("password").value;
            const yearOfStudy = document.getElementById("yearOfStudy").value;
            const contact = document.getElementById("contact").value.trim();

            // Validation checks
            if (name === "") {
                alert("Full Name is required.");
                return;
            }

            if (gender === "") {
                alert("Please select a gender.");
                return;
            }

            if (dateOfBirth === "") {
                alert("Date of Birth is required.");
                return;
            }

            const emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
            if (!emailPattern.test(email)) {
                alert("Please enter a valid email address.");
                return;
            }

            if (password.length < 6) {
                alert("Password must be at least 6 characters long.");
                return;
            }

            if (yearOfStudy === "") {
                alert("Please select your year of study.");
                return;
            }

            const contactPattern = /^[0-9]{10}$/;
            if (!contactPattern.test(contact)) {
                alert("Contact Number must be 10 digits long.");
                return;
            }

            // If all validations pass, submit the form
            document.getElementById("signupForm").submit();
        }
    </script>
</head>
<body>

<header>
    <h1>KL University ERP System</h1>
    <p>Welcome to the official ERP system for KL University</p>
</header>

<div class="signup-container">
    <h1>Sign Up</h1>
    <form id="signupForm" action="/signup" method="POST" onsubmit="validateForm(event)">
        <label for="name">Full Name:</label>
        <input type="text" id="name" name="name" required>

        <label for="gender">Gender:</label>
        <select id="gender" name="gender" required>
            <option value="">Select Gender</option>
            <option value="Male">Male</option>
            <option value="Female">Female</option>
            <option value="Other">Other</option>
        </select>

        <label for="dateOfBirth">Date of Birth:</label>
        <input type="date" id="dateOfBirth" name="dateOfBirth" required>

        <label for="email">Email Address:</label>
        <input type="email" id="email" name="email" required>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>

        <label for="yearOfStudy">Year of Study:</label>
        <select id="yearOfStudy" name="yearOfStudy" required>
            <option value="">Select Year</option>
            <option value="1st Year">1st Year</option>
            <option value="2nd Year">2nd Year</option>
            <option value="3rd Year">3rd Year</option>
            <option value="4th Year">4th Year</option>
        </select>

        <label for="contact">Contact Number:</label>
        <input type="text" id="contact" name="contact" required>

        <input type="submit" value="Sign Up">
    </form>
    <div class="link">
        <p>Already have an account? <a href="/login">Sign In</a></p>
    </div>
</div>

<footer class="footer">
    <p>&copy; 2024 KL University</p>
</footer>

</body>
</html>
