USE goit;

SELECT
  order_details.order_id as order_id,
  orders.date as order_date,
  order_details.quantity,
  CONCAT (employees.first_name, " ", employees.last_name) as employee,
  products.name as product,
  products.price as price,
  categories.name as category,
  suppliers.name as supllier,
  suppliers.country as country,
  shippers.name as shipper,
  customers.name as customer,
  customers.country as customer_country
FROM
  orders
  INNER JOIN order_details ON order_details.order_id = orders.id
  INNER JOIN customers ON customers.id = orders.customer_id
  INNER JOIN employees ON employees.employee_id = orders.employee_id
  INNER JOIN shippers ON shippers.id = orders.shipper_id
  INNER JOIN products ON products.id = order_details.product_id
  INNER JOIN suppliers ON suppliers.id = products.supplier_id
  INNER JOIN categories ON categories.id = products.category_id
WHERE
  orders.employee_id > 3
  AND orders.employee_id <= 10;