-- TABLE- ORDERS
-- order_id | Customer_name | city | Product | Category | Price | quantity | Order_date | status 

--1. Get all delivered orders
        select * from orders where status = 'Delivered';

--2. Get orders where price is greater than 5000
        select * from orders where price > 5000

--3. Get orders from hyderabad sorted by latest
        select *  from orders where city = 'Hyderabad' order by order_date desc ;

--4. Get top 5 most expensive orders        
        select * from orders order by price desc limit 5 ;

--5. Get cheapest three products
        select  * from orders order by price limit 3;

--6. Get unique product categories
        select distinct category from orders ;

--7. Get the products where quantity is greater than 2
        select product, quantity from orders where quantity > 2 ;

--8. Get orders with price between 1000 and 3000
        select product, price from orders where price >=1000 and price <= 3000

--9. Get cancelled orders 
        select * from orders where status = 'Cancelled';

--10. Get orders sorted by quantity
        select * from orders order by quantity desc;

--11. Get 10 latest orders
        select * from orders order by order_date desc limit 10;

--12. Get orders where product name starts with s
        select product from orders where product like 's%';

--13. Get unique cities where orders are placed
        select distinct city  from orders;

--14. Get orders sorted by price and quantity
        select product, price , quantity from orders order by price desc, quantity desc;

--15. Get 5 orders by skipping the first 5 expensive products
        select product, price from orders order by price desc limit 5 offset 5;

--16. Get orders placed in last 30 days
        select * from orders where order_date >= '2026-03-01' order by order_date desc;

--17. Get high value orders (price > 100000) that are delivered
        select product, price, status from orders where price >=10000 and status = "Delivered" ;

--18. Get orders where quantity is 1 and but price is high (> 5000)
        select * from orders where quantity = 1 order by price desc ;

--19. Get top 5 latest cancelled orders
        select * from orders where status ="Cancelled" order by order_date desc limit 5;

--20. Get orders from cities starting with c and m
        select * from orders where city like 'c%' and city like '%m' ;

--21. Get products whose name contains pro
        select * from products where product like '%pro%';

--22. Get ordes where price is not between 2000 and 8000
        select product, price from orders where price > 2000 and price < 8000 ;

--23. get unique categories where price is greater than 5000
        select  distinct category where price < 5000 ;

--24.Get orders where quantity > 3 and city is not banglore 
        select * from  orders where city <> 'Banglore' and quantity >3 ;

--25. Get orders whose price is 4 digit number
        select * from orders where price between 1000 and 9999;

