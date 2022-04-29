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
<title>Cart</title>
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
			<h3>
				${cart.products}
				<c:forEach items="${cart.products}" var="item">
					${item.name}
				</c:forEach>
			</h3>
			<div class="d-flex">
				<div class="container">
					<h6>Product Name: Brilliant Stars</h6>
					<h6>Price: 6.00</h6>
					<h6>Quantity: 1</h6>
				</div>
				<div class="container">
					<h6>Product Name: Shining Fates</h6>
					<h6>Price: 6.00</h6>
					<h6>Quantity: 1</h6>
				</div>
				<div class="container">
					<h6>Product Name: Chilling Reign</h6>
					<h6>Price: 6.00</h6>
					<h6>Quantity: 1</h6>
				</div>
				<h2>Total: $18.00</h2>
			</div>
			<div class="d-flex flex-row-reverse">
				<apple-pay-button buttonstyle="black" type="check-out" locale="en"></apple-pay-button>

				<form action='/charge' method='POST' id='checkout-form'>
					<%-- 	<input type='hidden' th:value='${amount}' name='amount' /> <label>Price:<span
					th:text='${amount/100}' /></label> --%>
					<!-- NOTE: data-key/data-amount/data-currency will be rendered by Thymeleaf -->
					<script src='https://checkout.stripe.com/checkout.js'
						class='stripe-button'
						th:attr='data-key=pk_test_51KtNTsBxRJfNPUdIW1rt5QvUjKDaIxNCDr2ei1kCYgMU6ftixa6pWFgUmZ3NUPWhPHzf1YJ9SXowMRmH23xT9XNS00i7BkxzaA'
						data-amount=${amount}, data-currency=${currency
						}
						data-name='Baeldung' data-description='Buy Packs!'
						data-image='https://www.baeldung.com/wp-content/themes/baeldung/favicon/android-chrome-192x192.png'
						data-locale='auto' data-zip-code='false'>
						
					</script>
				</form>
			</div>
		</div>
	</div>
</body>
<script src="https://applepay.cdn-apple.com/jsapi/v1/apple-pay-sdk.js"></script>
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
