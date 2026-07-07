<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.sms.model.Student"%>

<%
Student student = (Student) request.getAttribute("student");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Student</title>

<style>

body{
    font-family: Arial;
    background:#f2f2f2;
}

.container{
    width:400px;
    margin:50px auto;
    background:white;
    padding:20px;
    border-radius:10px;
    box-shadow:0 0 10px gray;
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
    background:blue;
    color:white;
    border:none;
    cursor:pointer;
}

</style>

</head>

<body>

<div class="container">

<h2>Edit Student</h2>

<form action="updateStudent" method="post">

<input type="hidden" name="id"
value="<%= student.getId()%>">

<label>Name</label>

<input type="text"
name="name"
value="<%= student.getName()%>">

<label>Email</label>

<input type="email"
name="email"
value="<%= student.getEmail()%>">

<label>Course</label>

<input type="text"
name="course"
value="<%= student.getCourse()%>">

<button type="submit">
Update Student
</button>

</form>

</div>

</body>
</html>