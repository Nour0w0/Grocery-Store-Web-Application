import React from 'react';
import './Product.css';

const Product = ({ product }) => {
  return (
    <div className="product-card">
      <img src={product.imageUrl} alt={product.name} className="product-image" />
      <div className="product-info">
        <h3>{product.name}</h3>
        <p className="price">${product.price}</p>
        <p className="stock">In Stock: {product.stock}</p>
        <button className="add-to-cart">Add to Cart</button>
      </div>
    </div>
  );
};

export default Product; 