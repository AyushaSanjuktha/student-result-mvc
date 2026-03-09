<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Student Result Calculator</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f4f8;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .form-container {
            background-color: white;
            padding: 30px 40px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            width: 350px;
        }
        h2 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #34495e;
        }
        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 9px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 14px;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #2980b9;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #1f6395;
        }
    </style>
</head>
<body>

<div class="form-container">
    <h2>Student Result Calculator</h2>

    <!-- Form submits to ResultServlet -->
    <form action="ResultServlet" method="post">

        <label>Student Name:</label>
        <input type="text" name="studentName" placeholder="Enter student name" required />

        <label>Subject 1 Marks:</label>
        <input type="number" name="subject1" placeholder="Out of 100" min="0" max="100" required />

        <label>Subject 2 Marks:</label>
        <input type="number" name="subject2" placeholder="Out of 100" min="0" max="100" required />

        <label>Subject 3 Marks:</label>
        <input type="number" name="subject3" placeholder="Out of 100" min="0" max="100" required />

        <input type="submit" value="Calculate Result" />

    </form>
</div>

</body>
</html>
