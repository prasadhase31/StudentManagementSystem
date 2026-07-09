<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List"%>
<%@ page import="com.sms.model.Student"%>
<!DOCTYPE html>
<html>
<head><link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
<meta charset="UTF-8">
<title>View Students</title>

<style>

body{
    font-family: Arial, sans-serif;
    background:#f2f2f2;
}

.container{
    width:90%;
    margin:auto;
    margin-top:40px;
}

table{
    width:100%;
    border-collapse:collapse;
    background:white;
}

th,td{
    border:1px solid gray;
    padding:10px;
    text-align:center;
}

th{
    background:#4CAF50;
    color:white;
}

h2{
    text-align:center;
}

a{
    text-decoration:none;
    color:white;
    background:green;
    padding:8px 15px;
    border-radius:5px;
}

</style>

</head>

<body>

<div class="container">

<h2>Student List</h2>

<table>

<tr>

<th>ID</th>
<th>Name</th>
<th>Email</th>
<th>Course</th>
<th>Action</th>


</tr>

<%

List<Student> list =
(List<Student>)request.getAttribute("studentList");

if(list!=null){

for(Student s:list){

%>

<tr>

<td><%= s.getId() %></td>

<td><%= s.getName() %></td>

<td><%= s.getEmail() %></td>

<td><%= s.getCourse() %></td>

<td>

<a href="editStudent?id=<%= s.getId() %>">Edit</a>

&nbsp;&nbsp;

<a href="deleteStudent?id=<%= s.getId() %>"
onclick="return confirm('Are you sure you want to delete this student?');">

Delete

</a>

</td>

</tr>

<%

}

}

%>

</table>

<br>

<a href="addStudent.jsp">Add New Student</a>

</div>

</body>
</html>