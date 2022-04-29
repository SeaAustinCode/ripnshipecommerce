package com.austin.ripnshipecommerce.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.austin.ripnshipecommerce.model.Product;
import com.austin.ripnshipecommerce.repo.ProductRepo;

@Service
public class ProductService {

	//CRUD
	@Autowired // a simpler and easier way to do dependency injection
	private ProductRepo productRepo;

	// READ ALL Products //
	public List<Product> allProducts() {
		return productRepo.findAll(); 
	}

	// CREATE New Product entry
	public Product createProduct(Product product) {

		return productRepo.save(product);
	}
	
	// Retrieve one product by id
	public Product findProduct(Long id) {
		Optional<Product> optionalProduct = productRepo.findById(id);
		if (optionalProduct.isPresent()) {
			return optionalProduct.get();
		} else {
			return null;
		}
	}
	
	// UPDATE Product entry
		public Product updateProduct(Product product) {
			return productRepo.save(product);
		}

	// DELETE Product Entry
	public void deleteProduct(Long id) {
		productRepo.deleteById(id);
	}

	
}

