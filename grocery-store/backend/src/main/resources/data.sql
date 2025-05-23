-- First, insert the categories
INSERT INTO categories (name, description) VALUES
('Fruits & Vegetables', 'Fresh fruits and vegetables'),
('Dairy & Eggs', 'Dairy products and fresh eggs'),
('Meat & Seafood', 'Fresh and frozen meat and seafood'),
('Pantry', 'Canned goods, pasta, rice, and other dry goods'),
('Beverages', 'Drinks, coffee, tea, and juices'),
('Bakery', 'Fresh bread and pastries'),
('Snacks', 'Snacks and chips'),
('Canned Goods', 'Canned foods and preserves'),
('Condiments', 'Sauces and condiments'),
('Household', 'Household items and cleaning supplies'),
('Personal Care', 'Personal care and hygiene products');


-- Then, insert the products
INSERT INTO products (name, description, price, category_id, image_url, stock_quantity, is_featured, created_at, updated_at) VALUES
('Fresh Apples', 'Sweet and juicy red apples', 2.99, 1, 'https://images.unsplash.com/photo-1560806887-1e4cd0b6cbd6', 100, true, NOW(), NOW()),
('Organic Bananas', 'Ripe yellow bananas', 1.99, 1, 'https://images.unsplash.com/photo-1603833665858-e61d17a86224', 150, true, NOW(), NOW()),
('Fresh Carrots', 'Crunchy orange carrots', 1.49, 1, 'https://images.unsplash.com/photo-1582515073490-39981397c445', 80, false, NOW(), NOW()),
('Whole Milk', 'Fresh whole milk, 1 gallon', 3.99, 2, 'https://images.unsplash.com/photo-1563636619-e9143da7973b', 50, true, NOW(), NOW()),
('Large Eggs', 'Farm fresh eggs, dozen', 2.99, 2, 'https://images.unsplash.com/photo-1582722872445-44dc5f7e3c8f', 60, true, NOW(), NOW()),
('Cheddar Cheese', 'Sharp cheddar cheese, 8 oz', 4.99, 2, 'https://images.unsplash.com/photo-1552767059-ce182ead6c1b', 40, false, NOW(), NOW()),
('Chicken Breast', 'Boneless skinless chicken breast, 1 lb', 5.99, 3, 'https://images.unsplash.com/photo-1604503468506-a8da13d82791', 30, true, NOW(), NOW()),
('Atlantic Salmon', 'Fresh Atlantic salmon fillet, 1 lb', 12.99, 3, 'https://images.unsplash.com/photo-1599084993091-1cb5c0721cc6', 25, true, NOW(), NOW()),
('Ground Beef', 'Lean ground beef, 1 lb', 6.99, 3, 'https://images.unsplash.com/photo-1588168333986-5078d3ae3976', 35, false, NOW(), NOW()),
('White Rice', 'Long grain white rice, 5 lb bag', 4.99, 4, 'https://images.unsplash.com/photo-1586201375761-83865001e31c', 70, true, NOW(), NOW()),
('Pasta', 'Spaghetti pasta, 1 lb', 1.99, 4, 'https://images.unsplash.com/photo-1551462147-37885acc36f1', 90, true, NOW(), NOW()),
('Tomato Sauce', 'Classic marinara sauce, 24 oz', 2.99, 4, 'https://images.unsplash.com/photo-1472476443507-c7a5948772fc', 65, false, NOW(), NOW()),
('Orange Juice', 'Fresh squeezed orange juice, 64 oz', 4.99, 5, 'https://images.unsplash.com/photo-1600271886742-f049cd451bba', 45, true, NOW(), NOW()),
('Coffee Beans', 'Premium roasted coffee beans, 12 oz', 8.99, 5, 'https://images.unsplash.com/photo-1559056199-641a0ac8b55e', 55, true, NOW(), NOW()),
('Green Tea', 'Organic green tea, 20 bags', 3.99, 5, 'https://images.unsplash.com/photo-1564890369478-c89ca6d9cde9', 75, false, NOW(), NOW()),
('Fresh Bread', 'Soft and crusty bread, 1 lb', 2.99, 6, 'https://images.unsplash.com/photo-1549931319-a545dcf3bc73', 80, true, NOW(), NOW()),
('Croissants', 'Flaky croissants, 12 count', 3.99, 6, 'https://images.unsplash.com/photo-1555507036-ab1f4038808a', 50, true, NOW(), NOW()),
('Bagels', 'Soft bagels, 12 count', 2.49, 6, 'https://images.unsplash.com/photo-1585478259715-876acc5be8eb', 60, false, NOW(), NOW()),
('Potato Chips', 'Classic potato chips, 10 oz', 1.99, 7, 'https://images.unsplash.com/photo-1566478989037-eec170784d0b', 100, true, NOW(), NOW()),
('Mixed Nuts', 'Premium mixed nuts, 12 oz', 5.99, 7, 'https://images.unsplash.com/photo-1536591375672-5d8950df2c51', 75, true, NOW(), NOW()),
('Pretzels', 'Crunchy pretzels, 12 oz', 2.49, 7, 'https://images.unsplash.com/photo-1558961363-fa8fdf82db35', 80, false, NOW(), NOW()),
('Canned Tomatoes', 'Diced tomatoes, 14.5 oz', 1.49, 8, 'https://images.unsplash.com/photo-1597113366853-fea190b6cd82', 65, true, NOW(), NOW()),
('Black Beans', 'Black beans, 15 oz', 0.99, 8, 'https://images.unsplash.com/photo-1546069901-ba9599a7e63c', 90, true, NOW(), NOW()),
('Corn', 'Sweet corn, 15 oz', 0.89, 8, 'https://images.unsplash.com/photo-1551754655-cd27e38d2076', 85, false, NOW(), NOW()),
('Ketchup', 'Classic ketchup, 20 oz', 2.99, 9, 'https://images.unsplash.com/photo-1607602275934-c5637d0a2b61', 70, true, NOW(), NOW()),
('Mustard', 'Yellow mustard, 8 oz', 1.99, 9, 'https://images.unsplash.com/photo-1528750997573-59b89d56f4f7', 80, true, NOW(), NOW()),
('Hot Sauce', 'Spicy hot sauce, 5 oz', 3.49, 9, 'https://images.unsplash.com/photo-1589308454676-32fac4c4534d', 65, false, NOW(), NOW()),
('Dish Soap', 'Lemon scented dish soap, 24 oz', 3.49, 10, 'https://images.unsplash.com/photo-1585670140545-ccd3fdf44c56', 50, true, NOW(), NOW()),
('Paper Towels', 'Double roll paper towels, 6 pack', 5.99, 10, 'https://images.unsplash.com/photo-1583947581924-860bda3c4381', 40, false, NOW(), NOW()),
('Laundry Detergent', 'Fresh scent laundry detergent, 100 oz', 12.99, 10, 'https://images.unsplash.com/photo-1610557892470-55d9e80c0bce', 35, true, NOW(), NOW()),
('Shampoo', 'Moisturizing shampoo, 16 oz', 5.99, 11, 'https://images.unsplash.com/photo-1576426863848-c21f53c60b19', 60, true, NOW(), NOW()),
('Toothpaste', 'Mint fresh toothpaste, 6 oz', 3.49, 11, 'https://images.unsplash.com/photo-1559304822-9eb2813c9844', 75, false, NOW(), NOW()),
('Body Wash', 'Refreshing body wash, 18 oz', 6.49, 11, 'https://images.unsplash.com/photo-1608248597279-f99d160bfcbc', 55, true, NOW(), NOW());