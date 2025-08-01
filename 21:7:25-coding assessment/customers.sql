CREATE TABLE customers (
    CustomerID VARCHAR(10) PRIMARY KEY,
    CustomerName VARCHAR(100),
    Region VARCHAR(50),
    SignupDate DATE
);

INSERT INTO customers (CustomerID, CustomerName, Region, SignupDate) VALUES
('C0001', 'Lawrence Carroll', 'South America', '2022-07-10'),
('C0002', 'Elizabeth Lutz', 'Asia', '2022-02-13'),
('C0003', 'Michael Rivera', 'South America', '2024-03-07'),
('C0004', 'Kathleen Rodriguez', 'South America', '2022-10-09'),
('C0005', 'Laura Weber', 'Asia', '2022-08-15'),
('C0006', 'Brittany Palmer', 'South America', '2024-01-07'),
('C0007', 'Paul Graves', 'Asia', '2022-06-18'),
('C0008', 'David Li', 'North America', '2024-01-13'),
('C0009', 'Joy Clark', 'Europe', '2023-08-14'),
('C0010', 'Aaron Cox', 'Europe', '2022-12-15'),
('C0011', 'Bryan Mathews', 'South America', '2022-12-12'),
('C0012', 'Kevin May', 'South America', '2024-08-07'),
('C0013', 'Lauren Buchanan', 'South America', '2024-05-19'),
('C0014', 'Deborah Wilcox', 'Europe', '2024-06-22'),
('C0015', 'Tina Duran', 'North America', '2023-11-20'),
('C0016', 'Emily Woods', 'North America', '2024-01-03'),
('C0017', 'Jennifer King', 'Europe', '2023-12-05'),
('C0018', 'Tyler Haynes', 'North America', '2024-09-21'),
('C0019', 'Brandon Rodriguez', 'Europe', '2023-01-12'),
('C0020', 'Mr. Manuel Conway', 'North America', '2024-06-11');
