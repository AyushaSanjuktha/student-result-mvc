<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Student Result</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #f0f4f8;
               display: flex; justify-content: center; align-items: center;
               height: 100vh; margin: 0; }
        .result-container { background-color: white; padding: 30px 40px;
               border-radius: 10px; box-shadow: 0 4px 12px rgba(0,0,0,0.1); width: 380px; }
        h2 { text-align: center; color: #2c3e50; margin-bottom: 20px; }
        table { width: 100%; border-collapse: collapse; margin-bottom: 20px; }
        th, td { padding: 10px 14px; border: 1px solid #ddd; text-align: left; }
        th { background-color: #2980b9; color: white; }
        tr:nth-child(even) { background-color: #f9f9f9; }
        .total-row { font-weight: bold; background-color: #eaf4fb !important; }
        .back-btn { display: block; text-align: center; margin-top: 10px;
               padding: 10px; background-color: #27ae60; color: white;
               text-decoration: none; border-radius: 5px; font-size: 15px; }
        .back-btn:hover { background-color: #1e8449; }
    </style>
</head>
<body>
<%
    // Use reflection — avoids "StudentResult cannot be resolved" import error in JSP
    Object obj = request.getAttribute("student");
    String studentName = (String)  obj.getClass().getMethod("getStudentName").invoke(obj);
    int    s1          = (int)     obj.getClass().getMethod("getSubject1").invoke(obj);
    int    s2          = (int)     obj.getClass().getMethod("getSubject2").invoke(obj);
    int    s3          = (int)     obj.getClass().getMethod("getSubject3").invoke(obj);
    int    total       = (int)     obj.getClass().getMethod("getTotal").invoke(obj);
    double average     = (double)  obj.getClass().getMethod("getAverage").invoke(obj);
%>
<div class="result-container">
    <h2>Result for <%= studentName %></h2>
    <table>
        <tr><th>Field</th><th>Value</th></tr>
        <tr><td>Student Name</td><td><%= studentName %></td></tr>
        <tr><td>Subject 1 Marks</td><td><%= s1 %></td></tr>
        <tr><td>Subject 2 Marks</td><td><%= s2 %></td></tr>
        <tr><td>Subject 3 Marks</td><td><%= s3 %></td></tr>
        <tr class="total-row"><td>Total Marks</td><td><%= total %> / 300</td></tr>
        <tr class="total-row"><td>Average Marks</td><td><%= String.format("%.2f", average) %></td></tr>
    </table>
    <a class="back-btn" href="main.jsp">&#8592; Calculate Again</a>
</div>
</body>
</html>
