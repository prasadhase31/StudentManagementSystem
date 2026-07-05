<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Management System</title>

<style>

body{
    font-family: Arial, sans-serif;
    background:#f2f2f2;
    text-align:center;
    margin-top:100px;
}

.container{
    width:500px;
    margin:auto;
    background:white;
    padding:30px;
    border-radius:10px;
    box-shadow:0px 0px 10px gray;
}

a{
    text-decoration:none;
    background:green;
    color:white;
    padding:12px 25px;
    border-radius:5px;
    font-size:18px;
}

a:hover{
    background:darkgreen;
}

</style>

</head>

<body>

<div class="container">

    <h1>Student Management System</h1>

    <p>Welcome to MVC + JDBC CRUD Project</p>

    <br>

    <a href="addStudent.jsp">Add Student</a>

</div>

</body>
</html>