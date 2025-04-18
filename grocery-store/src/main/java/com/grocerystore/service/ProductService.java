package com.grocerystore.service;

import com.grocerystore.model.Product;
import java.util.List;
import java.util.Optional;

public interface ProductService {
    List<Product> getAllProducts();
    Optional<Product> getProductById(Long id);
    Product createProduct(Product product);
    Product updateProduct(Long id, Product productDetails);
    void deleteProduct(Long id);
    List<Product> findByCategoryId(Long categoryId);
    List<Product> findByNameContaining(String name);
} 