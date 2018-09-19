<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BooksCRUD</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css">
<style>

	.container {
		margin-top:20px;
	}

</style>
</head>
<body>
<div class="container">
	<h1 class="h1 mb-3 font-weight-normal">All Books</h1>
	<br>
	<table class="table table-striped table-bordered">
	<thead>
		<tr>
			<th scope="col">Title</th>
			<th scope="col">Description</th>
			<th scope="col">Language</th>
			<th scope="col">Number of Pages</th>
			<th scope="col">Action</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${books}" var="book">
		<tr>
			<td><c:out value="${book.title}" /></td>
			<td><c:out value="${book.description}" /></td>
			<td><c:out value="${book.language}" /></td>
			<td><c:out value="${book.numberOfPages}" /></td>
			<td>
				<a class="btn btn-md btn-success" href="/books/${book.id}">View Details</a>
				<a class="btn btn-md btn-primary" href="/books/${book.id}/edit">Edit</a>			
			</td>
		</tr>
		</c:forEach>
	</tbody>
	</table>
	<a class="btn btn-md btn-primary" href="/books/new">Add a Book</a>
</div>
</body>
</html>