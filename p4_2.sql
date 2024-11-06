USE goit;

SELECT
  COUNT(*) as total_rows
FROM
  orders
  INNER JOIN order_details ON order_details.order_id = orders.id
  LEFT JOIN customers ON customers.id = orders.customer_id
  INNER JOIN employees ON employees.employee_id = orders.employee_id
  LEFT JOIN shippers ON shippers.id = orders.shipper_id
  INNER JOIN products ON products.id = order_details.product_id
  LEFT JOIN suppliers ON suppliers.id = products.supplier_id
  INNER JOIN categories ON categories.id = products.category_id;

/* 
Після заміни випадкових INNER JOIN на LEFT JOIN кількість рядків не змінилася, 
це означає, що для кожного запису в лівій таблиці присутні всі відповідні значення для обраних ключів з правої таблиці. 
У такому випадку LEFT JOIN працює як INNER JOIN, не збільшуючи кількість рядків.
 */