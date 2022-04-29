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
<title>About Us</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/main.css">
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="col-12 d-flex border border-yellow" style="background-color: #041e47;">
		<div class="container mx-auto rounded-3 border-5 border border-warning justify-content-center"
			style="background-color: #3b5998;">
			<div class="container nav-fill d-flex justify-content-center">
				<nav class="nav nav-pills justify-content-around w-75 my-3 rounded d-flex border border-warning rounded-3 border-3 p-1"
					style="background-color: #FFFFFF;">
					<a class="nav-link" style="background-color:#f0ad4e;" aria-current="page" href="/home">Home</a> <a
						class="nav-link active" href="/about-us">About Us</a> <a class="nav-link" style="background-color:#f0ad4e;"
						href="/shop">Shop</a> 
						<a href="/cart"> 
							<img src="/images/cart.svg" img alt="shopping cart" 
						width="35" height="35"/></a>
				</nav>
			</div>
			<div
				class="container d-flex justify-content-center gap-5 my-5 border border-warning col-10 w-50"
				style="background-color: #FFFFFF;">
				<!-- Facebook -->
				<a class="btn btn-primary gap-3" style="background-color: #3b5998;"
					href="#!" role="button">facebook<i class="fab fa-facebook-f"></i></a>
				<!-- Twitter -->
				<a class="btn btn-primary" style="background-color: #55acee;"
					href="#!" role="button">Twitter<i class="fab fa-twitter"></i></a>
				<!-- Instagram -->
				<a class="btn btn-primary" style="background-color: #ac2bac;"
					href="#!" role="button">Instagram<i class="fab fa-instagram"></i></a>
				<!-- Github -->
				<a class="btn btn-primary" style="background-color: #333333;"
					href="#!" role="button">TikTok<i class="fab fa-github"></i></a>
			</div>
			<div class="d-flex media my-5 gap-5">
				<img class="d-flex align-self-center mr-3 rounded" width="450" height="640"
					src="/images/slowking_chilling_reign.jpg"
					alt="Generic placeholder image">
				<div class="media-body">
					<h5 class="mt-5 gap-5">About Us</h5>
					<p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
						scelerisque ante sollicitudin. Cras purus odio, vestibulum in
						vulputate at, tempus viverra turpis. Fusce condimentum nunc ac
						nisi vulputate fringilla. Donec lacinia congue felis in faucibus.</p>
					<p class="mb-0">Donec sed odio dui. Nullam quis risus eget urna
						mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis
						dis parturient montes, nascetur ridiculus mus.</p>
				</div>
			</div>
			</div>
</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<script src="https://unpkg.com/@popperjs/core@2/dist/umd/popper.js"></script>

</html>
