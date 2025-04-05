package com.grocerystore.repository;

import com.grocerystore.model.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {
    Page<Product> findByCategoryId(Long categoryId, Pageable pageable);
    
    @Query("SELECT p FROM Product p WHERE p.name LIKE %:keyword% OR p.description LIKE %:keyword%")
    Page<Product> searchProducts(String keyword, Pageable pageable);
    
    Page<Product> findByIsFeaturedTrue(Pageable pageable);
    
    @Query("SELECT p FROM Product p WHERE p.category.name = :categoryName")
    Page<Product> findByCategoryName(String categoryName, Pageable pageable);
} 