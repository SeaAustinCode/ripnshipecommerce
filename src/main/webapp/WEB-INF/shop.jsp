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
<title>Shop</title>
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
						class="nav-link active" href="/shop">Shop</a> <a href="/cart">
						<img src="/images/cart.svg" img alt="shopping cart" width="35"
						height="35" />
					</a>
				</nav>
			</div>
			<div class="row row-cols-1 row-cols-md-3 mb-3 text-center mx-5">
				<!-- this is code from the bootstrap website -->
				<div class="col">
					<div class="card mb-4 rounded-3 shadow-sm">
						<div class="card-header py-3 text-white bg-primary border-primary">
							<h4 class="my-0 fw-normal">Brilliant stars</h4>
						</div>
						<div class="card-body">
							<h1 class="card-title pricing-card-title">
								$6<small class="text-muted fw-light">/pack</small>
							</h1>
							<ul class="list-unstyled mt-3 mb-4">
								<li>The shining stars of this Pokémon TCG expansion are
									undeniably the Pokémon VSTAR.</li>
								<li>Celebrate the incredible connection between Trainers
									and their Pokémon with the Trainer Gallery subset</li>
								<li><strong>Features cards from Pokémon Sword and
										shield</strong></li>
							</ul>
							<a href="/product1" class="btn btn-lg btn-outline-primary w-100">Shop
								Brilliant Stars</a>
						</div>
					</div>
				</div>
				<div class="col">
					<!-- this is code from the bootstrap website -->
					<div class="card mb-4 rounded-3 shadow-sm">
						<div class="card-header py-3 text-white bg-warning border-warning">
							<h4 class="my-0 fw-normal">Shining Fates</h4>
						</div>
						<div class="card-body">
							<h1 class="card-title pricing-card-title">
								$6<small class="text-muted fw-light">/pack</small>
							</h1>
							<ul class="list-unstyled mt-3 mb-4">
								<li>Shiny Pokémon are so extraordinary that they’re almost never seen, </li>
								<li> and Trainers who catch them are considered quite lucky…and yet</li><br>
								<li>They can be yours in the Pokémon TCG: Shining Fates expansion.</li>
							</ul>
							<a href="/product2" class="btn btn-lg btn-outline-warning w-100">Shop
								Shining Fates</a>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card mb-4 rounded-3 shadow-sm border-primary">
						<div class="card-header py-3 text-white bg-primary border-primary">
							<h4 class="my-0 fw-normal">Chilling Reign</h4>
						</div>
						<div class="card-body">
							<h1 class="card-title pricing-card-title">
								$6<small class="text-muted fw-light">/pack</small>
							</h1>
							<ul class="list-unstyled mt-3 mb-4">
								<li>Seize the advantage with Pokémon of the frozen lands, phantom hauntings, howling blizzards, and wild battles, </li>
								<li>expanding the realms of your Pokémon strategy with new powers and new possibilities.</li>
								<li><strong>Features cards from Pokémon Sword and
										shield</strong></li>
							</ul>
							<a href="/product3" class="btn btn-lg btn-outline-primary w-100">Shop
								Chilling Reign</a>
						</div>
					</div>
				</div>
			</div>
			<div class="d-flex justify-content-around container my-5">
				<img alt="Brilliant Stars Pack"
					src="/images/brilliant_stars_pack.jpg" width="245" height="400">
				<img alt="Shining Fates Pack"
					src="/images/shining_fates_pack_charizard.jpg" width="245"
					height="400"> <img alt="Chilling Reign Pack"
					src="/images/chilling_reign_pack.jpg" width="245" height="400">
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
