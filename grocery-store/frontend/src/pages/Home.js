import React, { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import axios from 'axios';
import './Home.css';

const Home = () => {
  const [featuredProducts, setFeaturedProducts] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const fetchFeaturedProducts = async () => {
      try {
        const response = await axios.get('http://localhost:8081/api/products/featured');
        setFeaturedProducts(response.data.content);
      } catch (error) {
        console.error('Error fetching featured products:', error);
      } finally {
        setLoading(false);
      }
    };

    fetchFeaturedProducts();
  }, []);

  if (loading) {
    return <div className="loading">Loading...</div>;
  }

  return (
    <div className="home">
      <div className="hero-section">
        <h1>Welcome to Our Grocery Store</h1>
        <p>Find the best products at the best prices</p>
        <Link to="/products" className="cta-button">
          Browse Products
        </Link>
      </div>

      <section className="featured-products">
        <h2>Featured Products</h2>
        <div className="products-grid">
          {featuredProducts.map((product) => (
            <div key={product.id} className="product-card">
              <img 
                src={product.imageUrl || '/placeholder.jpg'} 
                alt={product.name}
                className="product-image"
              />
              <div className="product-info">
                <h3>{product.name}</h3>
                <p className="price">${product.price.toFixed(2)}</p>
                <Link to={`/products/${product.id}`} className="view-button">
                  View Details
                </Link>
              </div>
            </div>
          ))}
        </div>
      </section>
    </div>
  );
};

export default Home; 