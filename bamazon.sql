ROP DATABASE IF EXISTS bamazon;

CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
ItemID INTEGER NOT NULL,
ProductName VARCHAR(100),
DepartmentName VARCHAR(100),
Price DECIMAL(10,2),
StockQuantity INTEGER,
Primary KEY (ItemID)
);


INSERT INTO products (ItemID,ProductName,DepartmentName,Price,StockQuantity)
VALUES (1, "Brembo GT Series", "Brakes", 545.95, 15);
INSERT INTO products (ItemID,ProductName,DepartmentName,Price,StockQuantity)
VALUES (2, "Remmen", "Brakes", 445.95, 10);
INSERT INTO products (ItemID,ProductName,DepartmentName,Price,StockQuantity)
VALUES (3, "Rougue Racing", "Brakes", 926.49, 2);
INSERT INTO products (ItemID,ProductName,DepartmentName,Price,StockQuantity)
VALUES (4, "Liberty Walk", "Suspension", 800.95, 5);
INSERT INTO products (ItemID,ProductName,DepartmentName,Price,StockQuantity)
VALUES (5, "Moton", "Suspension", 728.22, 5);
INSERT INTO products (ItemID,ProductName,DepartmentName,Price,StockQuantity)
VALUES (6, "Rougue Racing", "Suspension", 426.49, 2);
INSERT INTO products (ItemID,ProductName,DepartmentName,Price,StockQuantity)
VALUES (7, "Air Intake", "Performance", 695.95, 10);
INSERT INTO products (ItemID,ProductName,DepartmentName,Price,StockQuantity)
VALUES (8, "Enhancement Chips", "Performance", 899.99, 3);
INSERT INTO products (ItemID,ProductName,DepartmentName,Price,StockQuantity)
VALUES (9, "Blade Runner Turbocharger", "Performance", 879.99, 10);
INSERT INTO products (ItemID,ProductName,DepartmentName,Price,StockQuantity)
VALUES (10, "Super Charger", "Performance", 699.99, 1);

select * FROM products