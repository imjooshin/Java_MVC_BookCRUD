<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>        
<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit <c:out value="${book.title}" /></title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css">
</head>
<style>

	.container {
		margin-top:20px;
	}

</style>
<body>
<div class="container">
	<h1 class="h1 mb-3 font-weight-normal">Edit Book</h1>
	<form:form action="/books/${book.id}" method="post" modelAttribute="book">
    	<input type="hidden" name="_method" value="put">
    	<div class="form-group">
        	<form:label path="title">Title:</form:label>
        	<form:errors path="title"/>
        	<form:input class="form-control" path="title"/>
    	</div>
    	<div class="form-group">
        	<form:label path="description">Description:</form:label>
        	<form:errors path="description"/>
        	<form:textarea class="form-control" path="description"/>
    	</div>
    	<div class="form-group">
        	<form:label path="language">Language:</form:label>
        	<form:errors path="language"/>
        	<form:input class="form-control" path="language"/>
    	</div>
    	<div class="form-group">
        	<form:label path="numberOfPages">Pages:</form:label>
        	<form:errors path="numberOfPages"/>     
        	<form:input class="form-control" type="number" path="numberOfPages"/>
    	</div>    
    	<input class="btn btn-primary" type="submit" value="Submit"/>
    	<a href="/books" class="btn btn-warning">Cancel</a>
	</form:form>
</div>
</body>
</html>