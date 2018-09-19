<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Book</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css">
<style>

	.container {
		margin-top: 20px;
	}

</style>

</head>
<body>
<div class="container">
	<h1 class="h1 mb-3 font-weight-normal">Add A Book</h1>

	<form:form action="/books" method="POST" modelAttribute="book">
	<div class="form-group">
		<form:label path="title">Title</form:label>
		<form:errors path="title" />
		<form:input placeholder="Title" class="form-control" path="title" />
	</div>
	<div class="form-group">
		<form:label path="description">Description</form:label>
		<form:errors path="description" />
		<form:textarea placeholder="Description" class="form-control" path="description" />
	</div>
	<div class="form-group">
		<form:label path="language">Language</form:label>
		<form:errors path="language" />
		<form:input placeholder="Language" class="form-control" path="language" />
	</div>
	<div class="form-group">
		<form:label path="numberOfPages">Pages</form:label>
		<form:errors path="numberOfPages" />
		<form:input placeholder="Number of Pages" class="form-control" path="numberOfPages" />
	</div>
	<input class="btn btn-primary" type="submit" value="Submit" />
	<a class="btn btn-warning" href="/books">Cancel</a>
	
	</form:form>
</div>
</body>
</html>