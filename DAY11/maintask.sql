create table customers (
    cid int primarykey AUTOINCREMENT,
    cname TEXT NOT NULL,
    cemail TEXT
);
insert intocustomers (name, email) VALUES
('karthika', 'karthika@gmail.com'),
('weekey', 'weekey@gmail.com'),
('monika', 'monika@gmail.com');
create table products (
    id int primarykey AUTOINCREMENT,
    title TEXT NOT NULL,
    category TEXT
);
insert into products (title, category) VALUES
('Laptop', 'Electronics'),
('Chair', 'Furniture'),
('Pen', 'Stationery');
create tableorders (
    id int primarykey AUTOINCREMENT,
    customerid int,
    productid int,
    quantity int,
    orderdate date,
   froreignkey (customer_id) references customers(id),
   froreignkey (product_id) references products(id)
);
                   insert into orders (customer_id, product_id, quantity, order_date) values
(1, 1, 2, '2025-06-01'),
(2, 3, 10, '2025-06-10'),
(3, 2, 5, '2025-06-15');
                    SELECT
    orders.id as orderid,
    customers.name as customername,
    products.title  as productname,
    products.category  as productgroup,
    orders.quantity,
    orders.order_date
                   FROM orders
JOIN customers ON orders.customer_id = customers.id
JOIN products ON orders.product_id = products.id
                   WHERE
    (customers.name LIKE '%Alice%' or '%karthika%' = '%%')
    AND (products.category = 'Electronics' or 'Electronics' = '') 
    AND (orders.order_date >= '2025-06-01' or '2025-06-01' = '') 
    AND (orders.order_date <= '2025-06-30' or '2025-06-30' = '')
;
