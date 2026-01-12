# Data Dictionary

## customers.csv
- customer_id: Unique identifier for customer
- customer_name: Customer's display name
- customer_segment: Consumer / Corporate / Home Office
- region: Sales region (North / South / East / West)
- signup_date: Date customer joined

## products.csv
- product_id: Unique product identifier
- category: Product category
- product_name: Name of product
- unit_cost: Cost to business
- unit_price: Sale price to customer

## orders.csv
- order_id: Unique identifier for order
- customer_id: Link to customers table
- order_date: Date of order
- delivery_date: Actual delivery date
- discount: Discount applied to order (0–20%)
- shipping_cost: Cost of shipping
- payment_method: Credit Card / PayPal / Wire / Debit

## order_items.csv
- order_item_id: Unique line item identifier
- order_id: Link to orders table
- product_id: Link to products table
- quantity: Units purchased
- unit_price: Selling price at time of purchase
- revenue: Quantity * unit_price
- profit: Revenue – (quantity * unit_cost)

## sales_targets.csv
- year: Year of sales target
- month: Month of sales target
- region: Region target applies to
- target_revenue: Revenue target in USD
