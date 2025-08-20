# Write your MySQL query statement below
WITH CTE1 AS
(SELECT DISTINCT customer_id, COUNT(DISTINCT product_key) as product_count FROM Customer GROUP BY customer_id),
CTE2 AS
(SELECT COUNT(DISTINCT product_key) as product_count FROM Product)
SELECT customer_id FROM CTE1 JOIN CTE2 ON CTE1.product_count=CTE2.product_count
