CREATE TABLE `customers` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `customer_name` char(50) NOT NULL,
  `email` char(100) NOT NULL,
  `phone` char(15) NOT NULL,
  `address` char(255) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE UNIQUE INDEX idx_email
ON customers(email);

CREATE INDEX idx_phone
ON customers(phone);

SHOW INDEX FROM customers;