-- Q6. Write a query to return the email,firstname,lastname and genre of all
--  Rock music listeners. Return your list ordered alphabetically by email
-- starting with letter 'A'.

select distinct email as Email , first_name as Firstname, last_name as Lastname,
genre.name from customer
join invoice on invoice.customer_id = customer.customer_id
join invoice_line on invoice_line.invoice_id = invoice.invoice_id
join track on track.track_id = invoice_line.track_id
join genre on genre.genre_id = track.genre_id
where genre.name like 'Rock'
order by Email asc