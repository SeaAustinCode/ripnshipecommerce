<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Portal</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/main.css">
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<h1>Admin Portal for submitting products.</h1>
	<div class="col-7">
		<form:form action="/product/new/method" method="post"
			modelAttribute="product">
			<%-- <form:input type="hidden" path="user" value="${user_id }"/>  leave this in if we want to keep track of which admin made the product--%>
			<form:label path="name">Product Name:</form:label>
			<form:input path="name" />
			<form:errors path="name" />
	</div>
	<!-- <div class="col-7"> -->
	<form:label path="price">Product Price:</form:label>
	<form:input path="price" />
	<form:errors path="price" />
	<!-- </div> -->
	<!-- <div class="col-7"> -->
	<form:label path="description">Product Description:</form:label>
	<form:input path="description" />
	<form:errors path="description" />
	<!--  </div>-->
	<!--  <div class="form-group col-7">-->
	<!-- <textarea class="form-control"> -->
	<button>Submit</button>
	</form:form>
	</div>
</body>
</html>