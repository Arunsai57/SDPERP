<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Fee Payments - ERP</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #8B0000;
            color: white;
            padding: 15px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        }
        header h1 {
            margin: 0;
            font-size: 24px;
        }
        .logout {
            font-size: 14px;
            text-decoration: none;
            color: white;
            padding: 5px 10px;
            border: 1px solid white;
            border-radius: 4px;
            transition: background-color 0.3s;
        }
        .logout:hover {
            background-color: white;
            color: #8B0000;
        }
        .container {
            display: flex;
            height: calc(100vh - 70px);
        }
        .sidebar {
            width: 250px;
            background-color: #292929;
            color: white;
            overflow-y: auto;
            box-shadow: 2px 0px 6px rgba(0, 0, 0, 0.1);
        }
        .sidebar ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }
        .sidebar ul li {
            padding: 15px;
            border-bottom: 1px solid #444;
            text-align: center;
        }
        .sidebar ul li a {
            text-decoration: none;
            color: white;
            display: block;
            font-size: 16px;
            font-weight: bold;
        }
        .sidebar ul li:hover {
            background-color: #8B0000;
        }
        .content {
            flex-grow: 1;
            padding: 30px;
            background-color: white;
            overflow-y: auto;
        }
        .content h2 {
            color: #8B0000;
            margin-bottom: 20px;
            text-align: center;
        }
        .form-container {
            max-width: 800px;
            margin: 0 auto;
        }
        .form-container form {
            background-color: #f9f9f9;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        }
        .form-container input[type="text"],
        .form-container input[type="number"],
        .form-container input[type="date"],
        .form-container input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 4px;
            border: 1px solid #ccc;
        }
        .form-container input[type="submit"] {
            background-color: #8B0000;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
        }
        .form-container input[type="submit"]:hover {
            background-color: #B22222;
        }
        #qr-code {
            margin-top: 20px;
            text-align: center;
        }
        footer {
            background-color: #8B0000;
            color: white;
            text-align: center;
            padding: 10px;
            position: relative;
            bottom: 0;
            width: 100%;
        }
    </style>

    <!-- Include QRCode.js -->
    <script src="https://cdn.rawgit.com/davidshimjs/qrcodejs/gh-pages/qrcode.min.js"></script>

    <script>
        function toggleCardDetails(paymentMethod) {
            const cardDetailsSection = document.getElementById("card-details");
            const qrCodeSection = document.getElementById("qr-code");
            
            // Hide or show sections based on payment method
            if (paymentMethod === 'credit-card' || paymentMethod === 'debit-card') {
                cardDetailsSection.style.display = "block";
                qrCodeSection.style.display = "none";
            } else if (paymentMethod === 'upi') {
                cardDetailsSection.style.display = "none";
                qrCodeSection.style.display = "block";
            }
        }

        // Function to generate a random QR code for UPI payment
        function generateQRCode() {
            var paymentMethod = document.getElementById("payment-method").value;
            var paymentDetails = '';

            if (paymentMethod === 'upi') {
                paymentDetails = "upi://example@upi?pa=example@upi&pn=Student&mc=1234&tid=5678&url=www.kluniversity.com";
                new QRCode(document.getElementById("qr-code"), paymentDetails);
            }
        }
    </script>
</head>

<body>
    <header>
        <h1>Student Portal - ERP</h1>
        <a href="/logout" class="logout">Logout</a>
    </header>
    <div class="container">
        <div class="sidebar">
            <ul>
                <li><a href="erphome">Home</a></li>
                <li><a href="/Profile">Profile</a></li>
                <li><a href="/attendanceregister">Attendance Register</a></li>
                <li><a href="/careerchoice">Career Choice</a></li>
                <li><a href="/courses">Courses</a></li>
                <li><a href="/counseling-diary">Counseling Diary</a></li>
                <li><a href="/clubs">Clubs/Activities</a></li>
                <li><a href="/exam-section">Exam Section</a></li>
                <li><a href="/feedback">Feedback</a></li>
                <li><a href="/fee-payments">Fee Payments</a></li>
                <li><a href="/hostel-management">Hostel Management</a></li>
                <li><a href="/library">Library</a></li>
                <li><a href="/my-cgpa">My CGPA</a></li>
            </ul>
        </div>
        <div class="content">
            <h2>Fee Payment</h2>
            <div class="form-container">
                <form onsubmit="event.preventDefault(); generateQRCode();">
                    <label for="student-name">Student Name:</label>
                    <input type="text" id="student-name" name="student-name" required>
                    
                    <label for="roll-number">Roll Number:</label>
                    <input type="text" id="roll-number" name="roll-number" required>
                    
                    <label for="fee-amount">Fee Amount (INR):</label>
                    <input type="number" id="fee-amount" name="fee-amount" required>
                    
                    <label for="payment-date">Payment Date:</label>
                    <input type="date" id="payment-date" name="payment-date" required>
                    
                    <label for="payment-method">Payment Method:</label>
                    <select id="payment-method" name="payment-method" required onchange="toggleCardDetails(this.value)">
                        <option value="credit-card">Credit Card</option>
                        <option value="debit-card">Debit Card</option>
                        <option value="net-banking">Net Banking</option>
                        <option value="upi">UPI</option>
                    </select>
                    
                    <!-- Credit/Debit Card Details Section -->
                    <div id="card-details" style="display:none;">
                        <label for="card-number">Card Number:</label>
                        <input type="text" id="card-number" name="card-number">
                        
                        <label for="expiry-date">Expiry Date:</label>
                        <input type="text" id="expiry-date" name="expiry-date">
                        
                        <label for="cvv">CVV:</label>
                        <input type="password" id="cvv" name="cvv">
                    </div>
                    
                    <input type="submit" value="Submit Payment">
                </form>
            </div>

            <!-- This is where the QR code will be displayed for UPI payments -->
            <div id="qr-code" style="display:none;"></div>
        </div>
    </div>
    <footer>
        <p>&copy; 2024 KL University - All Rights Reserved</p>
    </footer>
</body>
</html>
