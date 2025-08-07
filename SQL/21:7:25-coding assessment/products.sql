CREATE TABLE products (
    ProductID VARCHAR(10) PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10, 2)
);

INSERT INTO products (ProductID, ProductName, Category, Price) VALUES
('P0001', 'ActiveWear Biography', 'Books', 169.30),
('P0002', 'ActiveWear Smartwatch', 'Electronics', 346.30),
('P0003', 'ComfortLiving Biography', 'Books', 44.12),
('P0004', 'BookWorld Rug', 'Home Decor', 95.69),
('P0005', 'TechPro T-Shirt', 'Clothing', 429.31),
('P0006', 'ActiveWear Rug', 'Home Decor', 121.32),
('P0007', 'SoundWave Cookbook', 'Books', 420.15),
('P0008', 'BookWorld Bluetooth Speaker', 'Electronics', 146.85),
('P0009', 'BookWorld Wall Art', 'Home Decor', 325.01),
('P0010', 'ComfortLiving Smartwatch', 'Electronics', 350.13),
('P0011', 'SoundWave Desk Lamp', 'Home Decor', 261.20),
('P0012', 'ComfortLiving Headphones', 'Electronics', 159.60),
('P0013', 'BookWorld Smartwatch', 'Electronics', 114.20),
('P0014', 'ActiveWear Jacket', 'Clothing', 26.26),
('P0015', 'HomeSense Headphones', 'Electronics', 158.93),
('P0016', 'ActiveWear Running Shoes', 'Clothing', 330.05),
('P0017', 'ActiveWear Textbook', 'Books', 469.77),
('P0018', 'ComfortLiving Mystery Book', 'Books', 436.89),
('P0019', 'ComfortLiving Sweater', 'Clothing', 385.37),
('P0020', 'ActiveWear Jacket', 'Clothing', 396.34);
