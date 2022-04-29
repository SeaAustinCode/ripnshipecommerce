package com.austin.ripnshipecommerce.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.austin.ripnshipecommerce.model.Product;
import com.austin.ripnshipecommerce.model.User;
import com.austin.ripnshipecommerce.service.ProductService;
import com.austin.ripnshipecommerce.service.UserService;

@Controller
public class AdminController {

	@Autowired
	UserService userService;

	@Autowired
	ProductService productService;

	// Displays admindashboard page
	@GetMapping("/admindashboard")
	public String adminDashboard(Model model, HttpSession session) {

		Long id = (Long) session.getAttribute("userId");
		User user = userService.findOne(id);
		if (!user.getAdmin()) {
			return "redirect:/";
		} else {
			List<Product> products = productService.allProducts();
			model.addAttribute("products", products);
			return "admin.jsp"; //admin/admin.jsp
		}
	}

	// Create Product
	@GetMapping("/product/create/method")
	public String productCreateMethod(@ModelAttribute("product") Product product, HttpSession session) {

		Long id = (Long) session.getAttribute("userId");
		User user = userService.findOne(id);
		if (!user.getAdmin()) {
			return "redirect:/";
		}
		return "admin/addProduct.jsp";
	}

	@PostMapping("/product/create")
	public String ProductCreate(@Valid
							@ModelAttribute("product") Product product,
							BindingResult result, HttpSession session) {
		
		Long id = (Long) session.getAttribute("userId");
		User user = userService.findOne(id);
		if (!user.getAdmin()) {
			return "redirect:/";
					}
		
		if(result.hasErrors()) {
            return "admin/addProduct.jsp";
        }
		else {
			productService.createProduct(product);
			return "redirect:/adminportal";
		}
	}
	
	
	
	
//	------Update-----------
	@GetMapping("/update/products/{id}")
	public String adminUpdate(@ModelAttribute("product") Product product, @PathVariable("id") Long id, Model model, HttpSession session) {
		
		Long userid = (Long) session.getAttribute("userId");
		User user = userService.findOne(userid);
		if (!user.getAdmin()) {
			return "redirect:/";
					}
		
		
		Product product1 = productService.findProduct(id);
		model.addAttribute("product", product1);
		return "admin/updateProduct.jsp";
	}
	
	
	@PutMapping("/update/products/{id}")
	public String updateProduct(@Valid @ModelAttribute("product") Product product, BindingResult result, @PathVariable("id") Long id, Model model, HttpSession session) {
		
		Long userid = (Long) session.getAttribute("userId");
		User user = userService.findOne(userid);
		if (!user.getAdmin()) {
			return "redirect:/";
					}
		
		if(result.hasErrors()) {
			Product product1 = productService.findProduct(id);
			model.addAttribute("product", product1);
            return "admin/updateProduct.jsp";
        }
		else {
			product.setId(id);
			productService.updateProduct(product);
			return "redirect:/adminportal";
		}
	}
	
//	--------Delete---------
	@DeleteMapping("/delete/products/{id}")
	public String adminDelete(@PathVariable("id") Long id, HttpSession session) {
		
		Long userid = (Long) session.getAttribute("userId");
		User user = userService.findOne(userid);
		if (!user.getAdmin()) {
			return "redirect:/";
					}
		
		productService.deleteProduct(id);
		return "redirect:/adminportal";
	}
}

