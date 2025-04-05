-- Drop existing tables if they exist
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS categories;

-- Create Categories table
CREATE TABLE categories (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(1000),
    created_at DATETIME(6),
    updated_at DATETIME(6)
);

-- Create Products table
CREATE TABLE products (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(1000),
    price DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL,
    image_url VARCHAR(1000),
    category_id BIGINT,
    created_at DATETIME(6),
    updated_at DATETIME(6),
    FOREIGN KEY (category_id) REFERENCES categories(id)
); 