<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Home</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        h1 {
            text-align: center;
            margin-top: 30px;
            color: #8B0000;
        }
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            border: 1px solid #ddd;
        }
        th, td {
            padding: 12px;
            text-align: center;
            border: 1px solid #ddd;
        }
        th {
            background-color: #8B0000;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        .logout {
            text-decoration: none;
            padding: 10px 20px;
            background-color: #8B0000;
            color: white;
            border-radius: 5px;
            margin: 20px;
            display: inline-block;
        }
        .actions button {
            padding: 5px 10px;
            margin: 0 5px;
            border: none;
            border-radius: 3px;
            background-color: #8B0000;
            color: white;
            cursor: pointer;
        }
        .actions button:hover {
            background-color: #a11a1a;
        }
        #form {
            text-align: center;
            margin: 20px auto;
        }
        #form input {
            padding: 8px;
            margin: 5px;
        }
        #form button {
            padding: 8px 15px;
            background-color: #8B0000;
            color: white;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }
        #form button:hover {
            background-color: #a11a1a;
        }
    </style>
</head>
<body>

    <h1>Welcome to Admin Home Page</h1>
    <a href="/admin/login" class="logout">Logout</a>
    

    <h2 style="text-align:center;">Student List</h2>

    <!-- Table to display all students -->
    <table id="studentTable">
        <thead>
            <tr>
                <th>ID</th>
                <th>Username</th>
                <th>Password</th>
                <th>Contact</th>
                <th>Email</th>
                <th>Year</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>1</td>
                <td>Patri Venkata Sai</td>
                <td>Arunz@2004</td>
                <td>09493787689</td>
                <td>an-nsai@gnai.com</td>
                <td>3rd Year</td>
                <td class="actions">
                    <button onclick="editRow(this)">Edit</button>
                    <button onclick="deleteRow(this)">Delete</button>
                </td>
            </tr>
            <tr>
                <td>2</td>
                <td>Raj Kumar</td>
                <td>Raj12345</td>
                <td>9483746392</td>
                <td>raj@gmail.com</td>
                <td>2nd Year</td>
                <td class="actions">
                    <button onclick="editRow(this)">Edit</button>
                    <button onclick="deleteRow(this)">Delete</button>
                </td>
            </tr>
            <tr>
                <td>3</td>
                <td>Anjali Sharma</td>
                <td>Anj1234</td>
                <td>9876543210</td>
                <td>anjali@yahoo.com</td>
                <td>1st Year</td>
                <td class="actions">
                    <button onclick="editRow(this)">Edit</button>
                    <button onclick="deleteRow(this)">Delete</button>
                </td>
            </tr>
            <tr>
                <td>4</td>
                <td>Vivek Singh</td>
                <td>Vivek@987</td>
                <td>9393939393</td>
                <td>vivek@gmail.com</td>
                <td>4th Year</td>
                <td class="actions">
                    <button onclick="editRow(this)">Edit</button>
                    <button onclick="deleteRow(this)">Delete</button>
                </td>
            </tr>
            <tr>
                <td>5</td>
                <td>Sneha Gupta</td>
                <td>Sneha@2024</td>
                <td>9234567890</td>
                <td>sneha@gmail.com</td>
                <td>2nd Year</td>
                <td class="actions">
                    <button onclick="editRow(this)">Edit</button>
                    <button onclick="deleteRow(this)">Delete</button>
                </td>
            </tr>
        </tbody>
    </table>

    <!-- Form to add new student -->
    <div id="form">
        <input type="text" id="id" placeholder="ID">
        <input type="text" id="username" placeholder="Username">
        <input type="text" id="password" placeholder="Password">
        <input type="text" id="contact" placeholder="Contact">
        <input type="text" id="email" placeholder="Email">
        <input type="text" id="year" placeholder="Year">
        <button onclick="addStudent()">Add Student</button>
    </div>

    <script>
        // Function to add a student
        function addStudent() {
            let id = document.getElementById("id").value;
            let username = document.getElementById("username").value;
            let password = document.getElementById("password").value;
            let contact = document.getElementById("contact").value;
            let email = document.getElementById("email").value;
            let year = document.getElementById("year").value;

            if (id && username && password && contact && email && year) {
                let table = document.getElementById("studentTable").getElementsByTagName('tbody')[0];
                let newRow = table.insertRow();

                newRow.innerHTML = `
                    <td>${id}</td>
                    <td>${username}</td>
                    <td>${password}</td>
                    <td>${contact}</td>
                    <td>${email}</td>
                    <td>${year}</td>
                    <td class="actions">
                        <button onclick="editRow(this)">Edit</button>
                        <button onclick="deleteRow(this)">Delete</button>
                    </td>
                `;

                // Clear the input fields
                document.getElementById("id").value = '';
                document.getElementById("username").value = '';
                document.getElementById("password").value = '';
                document.getElementById("contact").value = '';
                document.getElementById("email").value = '';
                document.getElementById("year").value = '';
            } else {
                alert("Please fill all fields!");
            }
        }

        // Function to edit a student row
        function editRow(button) {
            let row = button.parentElement.parentElement;
            let cells = row.getElementsByTagName("td");

            let id = prompt("Edit ID:", cells[0].innerText);
            let username = prompt("Edit Username:", cells[1].innerText);
            let password = prompt("Edit Password:", cells[2].innerText);
            let contact = prompt("Edit Contact:", cells[3].innerText);
            let email = prompt("Edit Email:", cells[4].innerText);
            let year = prompt("Edit Year:", cells[5].innerText);

            if (id && username && password && contact && email && year) {
                cells[0].innerText = id;
                cells[1].innerText = username;
                cells[2].innerText = password;
                cells[3].innerText = contact;
                cells[4].innerText = email;
                cells[5].innerText = year;
            }
        }

        // Function to delete a student row
        function deleteRow(button) {
            let row = button.parentElement.parentElement;
            row.remove();
        }
    </script>

</body>
</html>
