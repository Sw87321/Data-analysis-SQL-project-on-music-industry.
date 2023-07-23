-- Q5. Who is the best customer? The customer who has spent the most money
-- will be declared the best customer. Write a query that returns the person
-- who has spent the most money.

select customer.customer_id,customer.first_name,customer.last_name,
sum(invoice.total) as Total_spent from invoice
join customer on customer.customer_id = invoice.customer_id
group by customer.customer_id
order by Total_spent desc
limit 1