import React, { useState, useEffect } from 'react';
import { useParams } from 'react-router-dom';
import { Row, Col, Card, Spinner } from 'react-bootstrap';
import axios from 'axios';
import './ProductDetail.css';

function ProductDetail() {
  const { id } = useParams();
  const [product, setProduct] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchProduct = async () => {
      try {
        const response = await axios.get(`http://localhost:8081/api/products/${id}`);
        setProduct(response.data);
      } catch (error) {
        console.error('Error fetching product details:', error);
        setError('Failed to load product details. Please try again later.');
      } finally {
        setLoading(false);
      }
    };

    fetchProduct();
  }, [id]);

  if (loading) {
    return (
      <div className="text-center p-5">
        <Spinner animation="border" role="status">
          <span className="visually-hidden">Loading...</span>
        </Spinner>
      </div>
    );
  }

  if (error) {
    return <div className="alert alert-danger m-3">{error}</div>;
  }

  if (!product) {
    return <div className="alert alert-warning m-3">Product not found</div>;
  }

  return (
    <div className="product-detail-container">
      <Row>
        <Col md={6}>
          <Card className="product-image-card">
            <Card.Img
              variant="top"
              src={product.imageUrl || '/placeholder.jpg'}
              alt={product.name}
              className="product-detail-image"
            />
          </Card>
        </Col>
        <Col md={6}>
          <Card className="product-info-card">
            <Card.Body>
              <Card.Title className="product-name">{product.name}</Card.Title>
              <Card.Text className="product-price">
                ${product.price.toFixed(2)}
              </Card.Text>
              <Card.Text className="product-category">
                Category: {product.category?.name}
              </Card.Text>
              <Card.Text className="product-description">
                {product.description}
              </Card.Text>
              <Card.Text className="product-stock">
                In Stock: {product.stock} units
              </Card.Text>
              <Card.Text className="product-updated">
                Last Updated: {new Date(product.updatedAt).toLocaleDateString()}
              </Card.Text>
            </Card.Body>
          </Card>
        </Col>
      </Row>
    </div>
  );
}

export default ProductDetail; 