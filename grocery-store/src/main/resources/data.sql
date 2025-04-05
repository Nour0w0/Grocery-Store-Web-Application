-- Insert Categories
INSERT INTO categories (name, description, created_at, updated_at) VALUES
('Fruits & Vegetables', 'Fresh fruits and vegetables', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Dairy & Eggs', 'Milk, cheese, eggs, and other dairy products', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Meat & Seafood', 'Fresh and frozen meat and seafood', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Pantry', 'Canned goods, pasta, rice, and other dry goods', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Beverages', 'Drinks, coffee, tea, and juices', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Insert Products with Unsplash image URLs
INSERT INTO products (name, description, price, stock, image_url, category_id, created_at, updated_at) VALUES
('Fresh Apples', 'Sweet and juicy red apples', 2.99, 100, 'https://images.unsplash.com/photo-1560806887-1e4cd0b6cbd6', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Organic Bananas', 'Ripe organic bananas', 1.99, 150, 'https://images.unsplash.com/photo-1603833665858-e61d17a86224', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Whole Milk', 'Fresh whole milk 1 gallon', 3.99, 50, 'https://images.unsplash.com/photo-1563636619-e9143da7973b', 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Large Eggs', 'Farm fresh large eggs, 12 count', 4.99, 75, 'https://images.unsplash.com/photo-1582722872445-44dc5f7e3c8f', 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Chicken Breast', 'Boneless skinless chicken breast', 8.99, 30, 'https://images.unsplash.com/photo-1604503468506-a8da13d82791', 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Salmon Fillet', 'Fresh Atlantic salmon fillet', 12.99, 25, 'https://images.unsplash.com/photo-1599084993091-1cb5c0721cc6', 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Pasta', 'Italian style pasta, 1 lb', 2.49, 200, 'https://images.unsplash.com/photo-1551462147-37885acc36f1', 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Rice', 'Long grain white rice, 2 lb', 3.99, 150, 'https://images.unsplash.com/photo-1586201375761-83865001e31c', 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Coffee', 'Ground coffee, 12 oz', 7.99, 100, 'https://images.unsplash.com/photo-1559056199-641a0ac8b55e', 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Orange Juice', 'Fresh squeezed orange juice, 1 gallon', 5.99, 40, 'https://images.unsplash.com/photo-1600271886742-f049cd451bba', 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP); 