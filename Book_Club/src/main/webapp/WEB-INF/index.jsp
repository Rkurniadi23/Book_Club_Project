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
<title>Login and Registration Page</title>
</head>
<body>
	<div class="container">
		<form:form class="form" action="/register" modelAttribute="newUser">
		<h1>Register</h1>
			<table class="container">
			    <thead>
			    	<tr>
			            <td class="form-row">First Name:</td>
			            <td class="form-row">
			            	<form:errors path="firstName" class="text-danger"/>
							<form:input class="input" path="firstName"/>
			            </td>
			        </tr>
			        <tr>
			            <td class="form-row">Last Name:</td>
			            <td class="form-row">
			            	<form:errors path="lastName" class="text-danger"/>
							<form:input class="input" path="lastName"/>
			            </td>
			        </tr>
			        <tr>
			            <td class="form-row">Email:</td>
			            <td class="form-row">
			            	<form:errors path="email" class="text-danger"/>
							<form:input class="input" path="email"/>
			            </td>
			        </tr>
			        <tr>
			            <td class="form-row">Password:</td>
			            <td class="form-row">
			            	<form:errors path="password" class="text-danger"/>
							<form:input type ="password" class="input" path="password"/>
			            </td>
			        </tr>
			        <tr>
			            <td class="form-row">Confirm PW:</td>
			            <td class="form-row">
			            	<form:errors path="confirm" class="text-danger"/>
							<form:input type ="password" class="input" path="confirm"/>
			            </td>
			        </tr>
			        <tr>
			        	<td colspan=2><input class="btn-primary" type="submit" value="Register"/></td>
			        </tr>
			    </thead>
			</table>
		</form:form>
		<hr>
		<form:form class="form" action="/login" modelAttribute="newLogin">
		<h1>Login</h1>
			<table class="container">
				<thead>
			    	<tr>
			        </tr>
			    </thead>
			    <thead>
			        <tr>
			            <td class="form-row">Email:</td>
			            <td class="form-row">
			            	<form:errors path="email" class="text-danger"/>
							<form:input class="input" path="email"/>
			            </td>
			        </tr>
			        <tr>
			            <td class="form-row">Password:</td>
			            <td class="form-row">
			            	<form:errors path="password" class="text-danger"/>
							<form:input type ="password" class="input" path="password"/>
			            </td>
			        </tr>
			        <tr>
			        	<td colspan=2><input class="input" type="submit" value="Log in"/></td>
			        </tr>
			    </thead>
			</table>
		</form:form>
	</div>
</body>
</html>