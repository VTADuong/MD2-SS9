DELIMITER //
CREATE PROCEDURE add_order (
	IN _customer_id INT,
    IN _product_id INT,
    IN _quantity INT,
    OUT _message CHAR (100)
)
BEGIN
	DECLARE current_stock INT;
    DECLARE product_price DECIMAL (15,2);
    
    SELECT stock, price INTO current_stock, product_price
    FROM products
    WHERE id = _product_id;
    
    IF current_stock < _quantity THEN
		SET _message = 'Khong du so luong sp de dat hang';
    ELSE
		UPDATE products
        SET stock = stock - _quantity
        WHERE id = _product_id;
        
        INSERT INTO orders (customer_id, product_id, quantity, total_amount, status)
        VALUE (
			_customer_id, 
            _product_id, 
            _quantity,
            (_quantity * product_price),
            'pending'
            );
        SET _message = 'Them don hang thanh cong';
	END IF;
END //
DELIMITER ;

CALL add_order(1, 1, 1,@msg);
SELECT @msg;

DROP PROCEDURE add_order