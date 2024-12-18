<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Career Choice - ERP</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        header {
            background-color: #8B0000; /* Brownish-red */
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
        .career-choice-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-evenly;
            gap: 20px;
        }
        .career-choice-card {
            background-color: #f9f9f9;
            width: 200px;
            height: 150px;
            border-radius: 8px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 18px;
            font-weight: bold;
            color: #8B0000;
            text-align: center;
            cursor: pointer;
            transition: transform 0.3s ease;
        }
        .career-choice-card:hover {
            transform: scale(1.05);
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
            <h2>Career Choices for CSE Development</h2>
            <div class="career-choice-container">
                <div class="career-choice-card">Web Developer</div>
                <div class="career-choice-card">Software Engineer</div>
                <div class="career-choice-card">Mobile App Developer</div>
                <div class="career-choice-card">AI/ML Engineer</div>
                <div class="career-choice-card">Cloud Engineer</div>
                <div class="career-choice-card">Cybersecurity Analyst</div>
                <div class="career-choice-card">Game Developer</div>
                <div class="career-choice-card">Data Scientist</div>
            </div>
        </div>
    </div>
    <footer>
        <p>&copy; 2024 KL University - All Rights Reserved</p>
    </footer>
</body>
</html>
