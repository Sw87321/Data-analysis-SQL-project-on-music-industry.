-- Q4.  city has the best customer? We would like to throw a promotional
-- music festival in the city we made most money. Write a query that returns
-- one city that has the highest sum of invoice totals. Return both city name
-- and sum Whichof all invoice totals.

select billing_city, sum(total)as invoice_total
from invoice
group by billing_city
order by invoice_total desc


