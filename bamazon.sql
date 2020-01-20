DROP DATABASE IF EXISTS bamazon;

CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
ItemID INTEGER(11) AUTO_INCREMENT NOT NULL,
ProductName VARCHAR(50) NOT NULL,
DepartmentName VARCHAR(50) NOT NULL,
Price DECIMAL(10,2),
StockQuantity INTEGER(10),
Primary KEY (ItemID)
);

INSERT INTO products (ProductName,DepartmentName,Price,StockQuantity)
VALUES ("Brembo GT Series", "Brakes", 545.95, 15);
INSERT INTO products (ProductName,DepartmentName,Price,StockQuantity)
VALUES ("Remmen", "Brakes", 445.95, 10);
INSERT INTO products (ProductName,DepartmentName,Price,StockQuantity)
VALUES ("Rougue Racing", "Brakes", 926.49, 2);
INSERT INTO products (ProductName,DepartmentName,Price,StockQuantity)
VALUES ("Liberty Walk", "Suspension", 800.95, 5);
INSERT INTO products (ProductName,DepartmentName,Price,StockQuantity)
VALUES ("Moton", "Suspension", 728.22, 5);
INSERT INTO products (ProductName,DepartmentName,Price,StockQuantity)
VALUES ("Rougue Racing", "Suspension", 426.49, 2);
INSERT INTO products (ProductName,DepartmentName,Price,StockQuantity)
VALUES ("Air Intake", "Performance", 695.95, 10);
INSERT INTO products ( ProductName,DepartmentName,Price,StockQuantity)
VALUES ("Enhancement Chips", "Performance", 899.99, 3);
INSERT INTO products (ProductName,DepartmentName,Price,StockQuantity)
VALUES ("Blade Runner Turbocharger", "Performance", 879.99, 10);
INSERT INTO products (ProductName,DepartmentName,Price,StockQuantity)
VALUES ("Super Charger", "Performance", 699.99, 1);

select * FROM products