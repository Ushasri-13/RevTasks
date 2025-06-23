1

SELECT p.product_name as ProductName,
s.company_name as CompanyName,
c.category_name as CategoryName
FROM 
categories c
join products p
on c.category_id = p.category_id
join suppliers s
on p.supplier_id = s.supplier_id;



2

select c.category_name,round(avg(p.unit_price),2) as average_unit_price from 
categories c
join products p
on c.category_id = p.category_id
group by category_name;




3




select city,company_name,contact_name ,'customers' as relationship from
customers 
union
select city,company_name,contact_name, 'suppliers' as relationship from 
suppliers ;








4


select year(order_date) as order_year,month(order_date) as order_month,count(*) from orders
group by order_year ,order_month;