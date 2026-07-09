INSERT INTO product (name, price, stock)
VALUES
('iPhone 15', 22990000.00, 15),
('Samsung Galaxy S24', 1900.00, 20),
('MacBook Air M3', 2800.00, 8),
('Dell XPS 13', 2500.00, 10),
('Asus ROG Strix', 3100.00, 5),
('AirPods Pro 2', 1000.00, 30),
('Apple Watch Series 9', 10990.00, 12),
('iPad Air 6', 1700.00, 18),
('Xiaomi 14', 1500.00, 25),
('OPPO Reno12', 1099.00, 22),
('Logitech MX Master 3S', 240.00, 40),
('Keychron K8', 2190.00, 35),
('Sony WH-1000XM5', 7000.00, 14),
('JBL Charge 5', 370.00, 28),
('Canon EOS R50', 1890.00, 6),
('Nikon Z30', 170.00, 7),
('HP LaserJet MFP', 400.00, 16),
('Kingston SSD 1TB', 180.00, 45),
('Samsung 27 Inch Monitor', 5490.00, 11),
('Acer Nitro 5', 2100.00, 9);

DELIMITER //
CREATE PROCEDURE get_high_value_products()
BEGIN
	SELECT * 
    FROM product
    WHERE price > 1000;
END //
DELIMITER ;

CALL get_high_value_products();