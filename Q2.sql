-- Q2.Which country has the most invoices?

select billing_country, count(total) as invoice_total from invoice
group by billing_country
order by billing_country desc
limit 1