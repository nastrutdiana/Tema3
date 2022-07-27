#Update the status of one order
UPDATE orders set status = "in progress" where id = 1; 

#Add comments to one order
UPDATE orders set comments = "fragile" where id = 1; 

#View all customers
SELECT * FROM customers;

#View all orders for the third customer
SELECT * FROM orders WHERE customer_id = 3;

#When placing an order update the stock for the products – try to implement with a small number of queries and explain your choice
UPDATE products
SET products.stock = products.stock - (SELECT quantity FROM orderdetails)
WHERE products.code = (SELECT product_code FROM orderdetails);
