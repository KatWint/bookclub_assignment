<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="style.css">
<title>Dashboard</title>
</head>
<body>
<h1>Welcome <c:out value="${loggedInUser.userName}"></c:out> </h1>
<a href="/logout">Logout</a>
<a href="/books/new">Add to the Shelf</a>
<p>Books from everyone's shelves:</p>
<table class="table table-striped table-light">
<thead>
	<tr>
		<th>Id</th>
		<th>Title</th>
		<th>Author's Name</th>
		<th>Posted By</th>
	</tr>
</thead>
<tbody>
	<c:forEach items="${allBooks}" var="allbooks">
		<tr>
		<td>${allbooks.id}</td>
		<td><a href="/books/${allbooks.id}">${allbooks.title}</a></td>
		<td>${allbooks.author} </td>
		<td>${allbooks.user.userName} </td>
		</tr>
	
	</c:forEach>	
</tbody>

</table>
</body>
</html>