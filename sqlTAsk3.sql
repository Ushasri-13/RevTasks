
/*
  1) Problem:
Write a SQL query to find the top 5 customers who have spent the most money.
Display customer ID, customer name, and total amount spent
*/


select c.customer_id,
c.company_name,
sum(unit_price) as total_amount
 from 

customers c

join
orders o
on c.customer_id = o.customer_id

join 
order_details od
on o.order_id = od.order_id

join
products p
on od.product_id = p.product_id

group by c.customer_id
order by total_amount desc
limit 5;



/*
2) Problem:
Write a SQL query that shows each employee along with the number of orders they handled, sorted by most to least.
*/



SELECT 
    e.employee_id,
    COUNT(o.order_id) AS total_orders
FROM 
    employees e
LEFT JOIN 
    orders o 
ON e.employee_id = o.employee_id
GROUP BY 
    e.employee_id
ORDER BY 
    total_orders DESC;

;



/*
3)Problem:
For each product category,
find the product that has generated the most revenue 
across all orders. Show category name, product
 name, and revenue.
 */



select c.category_name,
p.product_name,
sum(p.unit_price*od.quantity) as revenue
 from
categories c
join
products p
on c.category_id = p.category_id
join order_details od
on p.product_id = od.product_id
group by product_name;





/*4)Problem:
Calculate the average delivery time (in days) for each shipper, based on the ShippedDate - OrderDate.
*/





select s.shipper_id,
(shipped_date - order_date) as avg_days
 from 
orders o
join
shippers s

on o.ship_via = s.shipper_id
group by shipper_id;

























