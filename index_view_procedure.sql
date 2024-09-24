CREATE INDEX index_product_pName ON products (pName);
-- CREATE INDEX <tên index> ON <tên bảng> (column1,column2,...)

-- CREATE VIEW <tên view> AS <câu lệnh truy vấn>
CREATE VIEW v_order AS SELECT * FROM orders WHERE oTotalPrice > 150000;

SELECT * FROM v_order;

DELIMITER //
CREATE PROCEDURE total_order_min()
begin
	SELECT * FROM orders WHERE oTotalPrice = (SELECT min(oTotalPrice) from orders);
end //

-- > tạo -> chuyển 

-- SQL Injection

select * from users u where u.username = 'abc' or 1=1 -- and u.password = '12345'

-- syntax procedure


DELIMITER //
CREATE PROCEDURE dequy_proce()
begin

	call total_order_min();
	
end //

call dequy_proce();