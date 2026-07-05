<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Student</title>

<style>

body{
    font-family: Arial;
    background:#f4f4f4;
}

.container{
    width:400px;
    margin:50px auto;
    background:white;
    padding:20px;
    border-radius:10px;
    box-shadow:0px 0px 10px gray;
}

input{
    width:100%;
    padding:10px;
    margin-top:10px;
    margin-bottom:15px;
}

button{
    width:100%;
    padding:10px;
    background:green;
    color:white;
    border:none;
    cursor:pointer;
    font-size:16px;
}

button:hover{
    background:darkgreen;
}

</style>

</head>

<body>

<div class="container">

<h2 align="center">Add Student</h2>

<form action="addStudent" method="post">

    <label>Name</label>
    <input type="text" name="name" required>

    <label>Email</label>
    <input type="email" name="email" required>

    <label>Course</label>
    <input type="text" name="course" required>

    <button type="submit">
        Add Student
    </button>

</form>

</div>

</body>
</html>