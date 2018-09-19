<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About <c:out value="${book.title}"/></title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css">
<style>
.container {
	margin-top: 20px;
}
.detail {
    margin-right: 20px;
    width: 100%;
    height: auto;
    border: 5px solid gray;
    display: inline-block;
    vertical-align: top;
    padding: 50px;
    border-radius: 10px;
}

.btn {
    margin-right: 10px;
}

</style>
</head>
<body>
<div class="container">
	<h1 class="h1 mb-3 font-weight-normal"><c:out value="${book.title}"/></h1>
    <table class="table table-striped table-bordered">
    	<tr>
    		<td class="h5 mb-3 font-weight-heavy">Description: <c:out value="${book.description}"/></td>
    	</tr>
    	<tr>
			<td class="h5 mb-3 font-weight-heavy">Language: <c:out value="${book.language}"/></td>
		</tr>
		<tr>	
			<td class="h5 mb-3 font-weight-heavy">Number of pages: <c:out value="${book.numberOfPages}"/></td>
		</tr>
	</table>
	<a class="btn btn-md btn-success" href="/books/${book.id}/edit">Edit Book</a>
	<form action="/books/${book.id}" method="post">
   		<input type="hidden" name="_method" value="delete">
   		<input class="btn btn-md btn-danger" type="submit" value="Delete">
	</form>
	<a class="btn btn-md btn-primary" href="/books">Go Back</a>
</div>
</body>
</html>