DELIMITER //
CREATE PROCEDURE insert_customer(
	IN in_customer_name CHAR(50),
    IN in_email CHAR(100),
    IN in_phone INT,
    IN in_address CHAR(250)
)
BEGIN
	INSERT INTO customers(customer_name, email, phone, address)
    VALUE (in_customer_name, in_email, in_phone, in_address);
    
    SELECT 'Thêm mới khách hàng thành công' AS message;
END //
DELIMITER ;

CALL insert_customer (
	'Tran Anh Sang',
    's@gmail.com',
    '0898656544',
    'Binh Dinh'
);