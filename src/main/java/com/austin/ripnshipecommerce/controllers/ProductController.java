package com.austin.ripnshipecommerce.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;

import com.austin.ripnshipecommerce.model.Cart;
import com.austin.ripnshipecommerce.model.Product;
import com.austin.ripnshipecommerce.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;

	/* @Autowired private UserService userService; */

	// render Home page
	@GetMapping("/home")
	public String renderHomePage(@ModelAttribute("product") Product product, HttpSession session, Model model) {
		return "home.jsp";
	}

	// render About-Us page
	@GetMapping("/about-us")
	public String renderAboutUsPage(@ModelAttribute("product") Product product, HttpSession session, Model model) {
		return "about-us.jsp";
	}

	// render shop page
	@GetMapping("/shop")
	public String renderNewsPage(@ModelAttribute("product") Product product, HttpSession session, Model model) {
		return "shop.jsp";
	}

	// render Product 1 page
	@GetMapping("/product1")
	public String renderIndividualProductPage1(@ModelAttribute("product") Product product, HttpSession session,
			Model model) {
		return "product1.jsp";
	}

	// render Product 2 page
	@GetMapping("/product2")
	public String renderIndividualProductPage2(@ModelAttribute("product") Product product, HttpSession session,
			Model model) {
		return "product2.jsp";
	}

	// render Product 3 page
	@GetMapping("/product3")
	public String renderIndividualProductPage3(@ModelAttribute("product") Product product, HttpSession session,
			Model model) {
		return "product3.jsp";
	}

	// User session shopping cart -- From Ethan
	@GetMapping("/cart")
	public String cartEmpty() {
		return "cart.jsp";
	}

	// Button to add items to cart - From Ethan
	@PutMapping("/cart/{id}")
	public String cart(Model model, HttpSession session, @PathVariable("id") Long id) {
		Cart cart = (Cart) session.getAttribute("cart");
		Product object = productService.findProduct(id);
		cart.getProducts().add(object);
		session.setAttribute("cart", cart);
		return "redirect:/cart";
	}
}
