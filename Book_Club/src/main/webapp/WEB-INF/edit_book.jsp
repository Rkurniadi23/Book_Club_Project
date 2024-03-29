<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="styleshee" type="text/css" href="/css/style.css">
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Edit Page</title>
</head>
<body>
	<div class="container d-flex justify-content-between" >	
		<h1>Welcome, <c:out value="${user.firstName}"/>!</h1>
		<div>
			<a href="/logout">log out</a>
		</div>
	</div>
	<hr>
	<div class="container">			
	<c:if test = "${book.admin.id==user.id}">
		<form:form action="/books/edit/${book.id}" method="put" modelAttribute="book">
			<table>
			    <thead>
			    	<tr>
			            <td class="form-row">Title:</td>
			            <td class="form-row">
			            	<form:errors path="title" class="text-danger"/>
							<form:input class="input" path="title"/>
			            </td>
			        </tr>
			        <tr>
			        	<td class="form-row">Added by: <c:out value="${book.admin.firstName}"></c:out></td>
			        </tr>
			        <tr>
						<td class="form-row">Added on: <c:out value="${book.createdAt}"></c:out></td>
					</tr>
					<tr>	
						<td class="form-row">Last Updated on: <c:out value="${book.updatedAt}"></c:out></td>
					</tr>
			        
			        <tr>
			            <td class="form-row">Description:</td>
			            <td class="form-row">
			            	<form:errors path="description" class="text-danger"/>
							<form:input class="input" path="description"/>
			            </td>
			        </tr>	
					<tr>
			        	<td colspan=2><input class="form-row" type="submit" value="Submit"/></td>
			        </tr>
			    </thead>
			</table>
			<div class="form-row">
				<a href="/book/delete/${book.id}">Delete</a>
			</div>
		</form:form>
	</c:if>
	</div>
	<div class="container">
		<c:if test = "${book.admin.id!=user.id}">
			<form:form action="/books/edit/${book.id}" method="put" modelAttribute="book">
				<table>
				    <thead>
				    	<tr>
				            <td class="form-row"><c:out value="${book.title}"></c:out></td>
				        </tr>
				        <tr>
				        	<td class="form-row">Added by: <c:out value="${book.admin.firstName}"></c:out></td>
				        </tr>
				        <tr>
							<td class="form-row">Added on: <c:out value="${book.createdAt}"></c:out></td>
						</tr>
						<tr>	
							<td class="form-row">Last Updated on: <c:out value="${book.updatedAt}"></c:out></td>
						</tr>
				        
				        <tr>
				            <td class="form-row"><c:out value="${book.description}"></c:out></td>
				        </tr>	
			
				    </thead>
				</table>
				<div class="form-row">
					<a href="/book/delete/${book.id}">Delete</a>
				</div>
			</form:form>
		</c:if>
	</div>
</body>
</html>