package com.austin.ripnshipecommerce.model;

import java.util.ArrayList;

public class Cart {
	
	private ArrayList<Product> products = new ArrayList<Product>();
	
	// Constructor 
	public Cart() {}
	
	// Getters and Setters 

	public ArrayList<Product> getProducts() {
		return products;
	}

	public void setProducts(ArrayList<Product> products) {
		this.products = products;
	}
	
}