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

<body class="bg-light">

<div class="container mt-5">

    <div class="card shadow">

        <div class="card-header bg-primary text-white d-flex justify-content-between align-items-center">

            <h3>Student Management System</h3>

            <a href="addStudent.jsp" class="btn btn-light">
                + Add Student
            </a>

        </div>

        <div class="card-body">

            <table class="table table-bordered table-hover table-striped">

                <thead class="table-dark">

                    <tr>

                        <th>ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Course</th>
                        <th width="180">Action</th>

                    </tr>

                </thead>

                <tbody>

<%

List<Student> list=(List<Student>)request.getAttribute("studentList");

if(list!=null){

for(Student s:list){

%>

<tr>

<td><%=s.getId()%></td>

<td><%=s.getName()%></td>

<td><%=s.getEmail()%></td>

<td><%=s.getCourse()%></td>

<td>

<a href="editStudent?id=<%=s.getId()%>"
class="btn btn-warning btn-sm">

Edit

</a>

<a href="deleteStudent?id=<%=s.getId()%>"
class="btn btn-danger btn-sm"
onclick="return confirm('Are you sure you want to delete this student?')">

Delete

</a>

</td>

</tr>

<%

}

}

%>

                </tbody>

            </table>

        </div>

    </div>

</div>

</body>
</body>
</html>