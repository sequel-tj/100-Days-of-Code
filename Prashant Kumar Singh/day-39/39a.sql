# Write your MySQL query statement below
SELECT product_name, SUM(unit) AS unit FROM Products P JOIN Orders O ON P.product_id = O.product_id
WHERE MONTH(order_date) = 2 AND YEAR(order_date) = 2020
GROUP BY P.product_id
HAVING SUM(unit) >= 100;
