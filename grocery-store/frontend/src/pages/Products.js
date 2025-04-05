import React, { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import axios from 'axios';
import './Products.css';

const Products = () => {
  const [products, setProducts] = useState([]);
  const [categories, setCategories] = useState([]);
  const [loading, setLoading] = useState(true);
  const [searchTerm, setSearchTerm] = useState('');
  const [selectedCategory, setSelectedCategory] = useState('');
  const [currentPage, setCurrentPage] = useState(0);
  const [totalPages, setTotalPages] = useState(0);
  const [totalElements, setTotalElements] = useState(0);

  useEffect(() => { 
    const fetchData = async () => {
      try {
        let productsResponse;
        
        // Fetch categories
        const categoriesResponse = await axios.get('http://localhost:8081/api/categories', {
          headers: { "Content-Type": "application/json" },
          withCredentials: true
        });
        
        // Determine which API endpoint to use based on filters
        if (searchTerm) {
          productsResponse = await axios.get(`http://localhost:8081/api/products/search?keyword=${searchTerm}&page=${currentPage}&size=12`, {
            headers: { "Content-Type": "application/json" },
            withCredentials: true
          });
        } else if (selectedCategory) {
          productsResponse = await axios.get(`http://localhost:8081/api/products/category/${selectedCategory}?page=${currentPage}&size=12`, {
            headers: { "Content-Type": "application/json" },
            withCredentials: true
          });
        } else {
          productsResponse = await axios.get(`http://localhost:8081/api/products?page=${currentPage}&size=12`, {
            headers: { "Content-Type": "application/json" },
            withCredentials: true
          });
        }
        
        // Handle paginated response
        setProducts(productsResponse.data.content);
        setTotalPages(productsResponse.data.totalPages);
        setTotalElements(productsResponse.data.totalElements);
        setCategories(categoriesResponse.data);
      } catch (error) {
        console.error('Error fetching data:', error);
      } finally {
        setLoading(false);
      }
    };
  
    fetchData();
  }, [currentPage, searchTerm, selectedCategory]);

  const handleSearch = (e) => {
    setSearchTerm(e.target.value);
    setCurrentPage(0);
  };

  const handleCategoryChange = (e) => {
    setSelectedCategory(e.target.value);
    setCurrentPage(0);
  };

  const handlePageChange = (pageNumber) => {
    setCurrentPage(pageNumber);
  };

  if (loading) {
    return <div className="loading">Loading...</div>;
  }

  return (
    <div className="products-page">
      <div className="filters">
        <div className="search-box">
          <input
            type="text"
            placeholder="Search products..."
            value={searchTerm}
            onChange={handleSearch}
            className="search-input"
          />
        </div>
        <div className="category-filter">
          <select
            value={selectedCategory}
            onChange={handleCategoryChange}
            className="category-select"
          >
            <option value="">All Categories</option>
            {categories.map(category => (
              <option key={category.id} value={category.id}>
                {category.name}
              </option>
            ))}
          </select>
        </div>
      </div>

      <div className="products-grid">
        {products.map(product => (
          <div key={product.id} className="product-card">
            <img
              src={product.imageUrl || '/placeholder.jpg'}
              alt={product.name}
              className="product-image"
            />
            <div className="product-info">
              <h3>{product.name}</h3>
              <p className="price">${product.price.toFixed(2)}</p>
              <p className="category">{product.category?.name}</p>
              <Link to={`/products/${product.id}`} className="view-button">
                View Details
              </Link>
            </div>
          </div>
        ))}
      </div>

      {totalPages > 1 && (
        <div className="pagination">
          <button
            onClick={() => handlePageChange(currentPage - 1)}
            disabled={currentPage === 0}
            className="page-button"
          >
            Previous
          </button>
          {Array.from({ length: totalPages }, (_, i) => i).map(page => (
            <button
              key={page}
              onClick={() => handlePageChange(page)}
              className={`page-button ${currentPage === page ? 'active' : ''}`}
            >
              {page + 1}
            </button>
          ))}
          <button
            onClick={() => handlePageChange(currentPage + 1)}
            disabled={currentPage === totalPages - 1}
            className="page-button"
          >
            Next
          </button>
        </div>
      )}
    </div>
  );
};

export default Products; 