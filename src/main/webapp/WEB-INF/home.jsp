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
<title>Rip N Ship</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/main.css">
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="col-12 d-flex border border-yellow"
		style="background-color: #041e47;">
		<div
			class="container mx-auto border border-warning rounded-3 border-5 justify-content-center"
			style="background-color: #3b5998;">
			<div class="container nav-fill d-flex justify-content-center">
				<nav
					class="nav nav-pills justify-content-around w-75 my-3 rounded-4 d-flex p-1 border border-warning rounded-3 border-3"
					style="background-color: #FFFFFF;">
					<a class="nav-link active" aria-current="page" href="/home">Home</a>
					<a class="nav-link" style="background-color: #f0ad4e;"
						href="/about-us">About Us</a> <a class="nav-link"
						style="background-color: #f0ad4e;" href="/shop">Shop</a> <a
						href="/cart"> <img src="/images/cart.svg" img
						alt="shopping cart" width="35" height="35" /></a>
				</nav>
			</div>
			<div id="carouselWithIndicators" class="carousel slide my-5"
				data-bs-ride="carousel">
				<ol class="carousel-indicators">
					<li data-bs-target="#carouselWithIndicators" data-bs-slide-to="0"
						class="active" aria-current="true"></li>
					<li data-bs-target="#carouselWithIndicators" data-bs-slide-to="1"></li>
					<li data-bs-target="#carouselWithIndicators" data-bs-slide-to="2"></li>
				</ol>
				<div class="carousel-inner">
					<div class="carousel-item active">
						<div class="d-flex container">
							<img src="/images/Charizard_Brilliant_Stars.jpg" width="338"
								height="480" class="d-block mx-auto" alt="Charizard"> <img
								src="/images/charizard_Brilliant_Stars2.jpg" width="338"
								height="480" class="d-block mx-auto" alt="Charizard Vmax">
						</div>
					</div>
					<div class="carousel-item">
						<div class="d-flex container">
							<img src="/images/aggron_brilliant_stars.jpg" width="338"
								height="480" class="d-block mx-auto" alt="Aggron"> <img
								src="/images/aggron_brilliant_stars2.jpg" width="338"
								height="480" class="d-block mx-auto" alt="Aggron Vmax">
						</div>
					</div>
					<div class="carousel-item">
						<div class="d-flex container">
							<img src="/images/flygon_brilliant_stars.jpg" width="338"
								height="480" class="d-block mx-auto" alt="Flygon"> <img
								src="/images/flygon_brilliant_stars2.jpg" width="338"
								height="480" class="d-block mx-auto" alt="Flygon Vmax">
						</div>
					</div>
				</div>
				<a class="carousel-control-prev" href="#carouselWithIndicators"
					role="button" data-bs-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="visually-hidden">Previous</span>
				</a> <a class="carousel-control-next" href="#carouselWithIndicators"
					role="button" data-bs-slide="next"> <span
					class="carousel-control-next-icon" aria-hidden="true"></span> <span
					class="visually-hidden">Next</span>
				</a>
			</div>
			<div
				class="container d-flex justify-content-center gap-5 my-5 border border-warning rounded-3 border-3 col-10 w-50"
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
				<img class="d-flex align-self-center mr-3" width="450" height="640"
					src="/images/charizard_brilliant_stars_alt_art.jpg"
					alt="Generic placeholder image">
				<div class="media-body">
					<h5 class="mt-5 gap-5">Center-aligned media</h5>
					<p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
						scelerisque ante sollicitudin. Cras purus odio, vestibulum in
						vulputate at, tempus viverra turpis. Fusce condimentum nunc ac
						nisi vulputate fringilla. Donec lacinia congue felis in faucibus.</p>
					<p class="mb-0">Donec sed odio dui. Nullam quis risus eget urna
						mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis
						dis parturient montes, nascetur ridiculus mus.</p>
				</div>
			</div>
			<h3 class="text-center">Check out our Shining Fates packs to
				pull the shiny form of some of your favorite Pokemon!</h3>
			<div class="container my-5 d-flex gap-5">
				<div class="row mx-auto">
					<div class=".col-4">
						<img alt="baby shiny Rowlett"
							src="/images/rowlett_shining_fates.jpg" width="245" height="342">
						<div class=".col-4 my-5">
							<img alt="baby shiny Grookey"
								src="/images/grookey_shining_fates.jpg" width="245" height="342">
							<div class=".col-4 my-5">
								<img alt="baby shiny clobbopus"
									src="/images/clobbopus_shining_fates.jpg" width="245"
									height="342">
							</div>
						</div>
					</div>
				</div>
				<div class="row mx-auto">
					<div class=".col-4">
						<img alt="Shiny Dartrix" src="/images/dartrix_shining_fates.jpg"
							width="245" height="342">
						<div class=".col-4 my-5">
							<img alt="Shiny Thwackey"
								src="/images/thwackey_shining_fates.jpg" width="245"
								height="342">
							<div class=".col-4 my-5">
								<img alt="Shiny Grapploct"
									src="/images/grapploct_shining_fates.jpg" width="245"
									height="342">
							</div>
						</div>
					</div>
				</div>
				<div class="row mx-auto">
					<div class=".col-4">
						<img alt="Shiny Decidueye"
							src="/images/decidueye_shining_fates.jpg" width="245"
							height="342">
						<div class=".col-4 my-5">
							<img alt="Shiny Rillaboom"
								src="/images/rillaboom_shining_fates.jpg" width="245"
								height="342">
							<div class=".col-4 my-5">
								<img alt="Shiny Cramorant"
									src="/images/cramorant_shining_fates.jpg" width="245"
									height="342">
							</div>
						</div>
					</div>
				</div>
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
