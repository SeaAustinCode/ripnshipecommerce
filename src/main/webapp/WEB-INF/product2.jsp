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
<title>Shining Fates</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/main.css">
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="col-12 d-flex border border-yellow"
		style="background-color: #041e47;">
		<div
			class="container mx-auto rounded-3 border-5 border border-warning justify-content-center"
			style="background-color: #3b5998;">
			<div class="container nav-fill d-flex justify-content-center">
				<nav
					class="nav nav-pills justify-content-around w-75 my-3 rounded d-flex border border-warning rounded-3 border-3 p-1"
					style="background-color: #FFFFFF;">
					<a class="nav-link" style="background-color: #f0ad4e;"
						aria-current="page" href="/home">Home</a> <a class="nav-link"
						style="background-color: #f0ad4e;" href="/about-us">About Us</a> <a
						class="nav-link active" href="/shop">Shop</a><a href="/cart"> 
							<img src="/images/cart.svg" img alt="shopping cart" 
						width="35" height="35"/></a>
				</nav>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-md-6 d-flex justify-content-center">
						<img src="/images/shining_fates_pack_charizard.jpg" width="245" 
							height="400" alt="Single Brilliant Stars Booster Pack">
					</div>
					<div class="col-md-6 d-flex">
						<div class="row">
							<div class="col-md-12 my-3 text-center text-white">
								<h1>Shining Fates - single pack</h1>
								<h2 class="text-center my-3">$6.00</h2>
								<button
									class="btn btn-light btn-lg btn-outline-primary w-40 mx-auto">Add
									to Cart</button>
								<h3 class="my-4">About this item</h3>
								<li><strong>The Sword Shield Shining Fates
										Booster Pack contains 10 cards.</strong>
									</ul>
								<li><strong>Officially licensed and factory
										sealed.</strong>
									</ul>
							</div>
						</div>
						<!-- end row-->
					</div>
				</div>
				<!-- end row -->
			</div>
			<div class="container rounded border border-warning rounded-3 my-5"
				style="background-color: #FFFFFF;">
				<h2 class="text-center w-30">You may also like</h2>
			</div>
			<div class="d-flex justify-content-around container gap-5 my-5">
				<a href="/product1"><img alt="Brilliant Stars Pack"
					src="/images/brilliant_stars_pack.jpg" width="245"
					height="400"></a> <a href="/product3"><img alt="Chilling Reign Pack"
					src="/images/chilling_reign_pack.jpg" width="245" height="400"></a>
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
