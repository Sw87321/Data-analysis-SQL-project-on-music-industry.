-- Q1. Who is the senior most employee based on job title?

select first_name,last_name,levels from employee
order by levels desc
limit 1