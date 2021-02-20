-- Labs 9
 -- Create a table rentals_may to store the data from rental table with information for the month of May and insert values
 
drop table if exists rentals_may;

create table rentals_may like rental;

Insert into rentals_may select * from sakila.rental
where date_format(convert(rental_date,date), '%M') = 'May';

SELECT *
FROM rentals_may;

-- Create a table rentals_june to store the data from rental table with information for the month of June and insert values

create table rentals_june like rental;

Insert into rentals_june select * from sakila.rental
where date_format(convert(rental_date,date), '%M') = 'June';


SELECT *
FROM rentals_june;

-- Check the number of rentals for each customer for May

SELECT customer_id,count(rental_id) 
FROM rentals_may
GROUP BY customer_id;

-- Check the number of rentals for each customer for June

SELECT customer_id,count(rental_id) 
FROM rentals_june
GROUP BY customer_id;

-- Create a Python connection with SQL database and retrieve the results of the last two queries (also mentioned below) as dataframes:


