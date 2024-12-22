DROP TABLE IF EXISTS orders; 

CREATE TABLE orders 
	(order_id VARCHAR(10), customer_id VARCHAR(10), order_date DATE, product_id VARCHAR(10), quantity INT); 

INSERT INTO orders (order_id, customer_id, order_date, product_id, quantity) 
	VALUES 
	('1001', 'C001', '2023-01-15', 'P001', 4), 
	('1002', 'C001', '2023-02-20', 'P002', 3), 
	('1003', 'C002', '2023-03-10', 'P003', 8), 
	('1004', 'C003', '2023-04-05', 'P004', 2), 
	('1005', 'C004', '2023-05-20', 'P005', 3), 
	('1006', 'C002', '2023-06-15', 'P001', 6), 
	('1007', 'C003', '2023-07-20', 'P002', 1),
	('1008', 'C004', '2023-08-10', 'P003', 2),
	('1009', 'C005', '2023-09-05', 'P002', 3),
	('1010', 'C001', '2023-10-20', 'P002', 1);

SELECT * FROM ORDERS

/*

Categorize products based on their quantity sold into three categories: 
"Low Demand" (<= 5), "Medium Demand" (6-10), and "High Demand" (> 10). 
Return Product ID, Product Name, Quantity Sold, and Demand Category.
*/

SELECT PRODUCT_ID,
       QUANTITY AS QUANTITY_SOLD,
       CASE
			WHEN QUANTITY <=5 THEN 'Low Demand'
            WHEN quantity BETWEEN 6 AND 10 THEN 'Medium Demand'
            ELSE 'High Demand'
       END AS DEMAND_CATEGORY
FROM ORDERS