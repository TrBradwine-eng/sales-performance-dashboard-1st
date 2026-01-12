-- JOINS REFERENCE

-- Link orders to customers
SELECT *
FROM orders o
JOIN customers c
  ON o.customer_id = c.customer_id;

-- Link order_items to products
SELECT *
FROM order_items oi
JOIN products p
  ON oi.product_id = p.product_id;

-- Full sales model join
SELECT
    oi.order_item_id,
    o.order_id,
    o.order_date,
    c.customer_segment,
    c.region,
    p.category,
    p.product_name,
    oi.quantity,
    oi.unit_price,
    oi.revenue,
    oi.profit,
    o.discount,
    o.shipping_cost,
    o.payment_method
FROM order_items oi
JOIN orders o ON oi.order_id = o.order_id
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON oi.product_id = p.product_id;
