<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Student</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body class="bg-light">

<div class="container mt-5">

<div class="row justify-content-center">

<div class="col-md-6">

<div class="card shadow">

<div class="card-header bg-success text-white">

<h3 class="text-center">Add Student</h3>

</div>

<div class="card-body">

<form action="addStudent" method="post">

<div class="mb-3">
<label class="form-label">Student Name</label>
<input type="text" name="name" class="form-control" required>
</div>

<div class="mb-3">
<label class="form-label">Email</label>
<input type="email" name="email" class="form-control" required>
</div>

<div class="mb-3">
<label class="form-label">Course</label>
<input type="text" name="course" class="form-control" required>
</div>

<div class="text-center">

<button class="btn btn-success">
Save Student
</button>

<a href="viewStudents" class="btn btn-primary">
View Students
</a>

</div>

</form>

</div>

</div>

</div>

</div>

</div>

</body>
</html>