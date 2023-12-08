use mavenmovies;
-- identify the primary keys and foreign keys in maven movies db. Discuss the differences
-- list all details of actors
desc actor;
select * from actor;
-- list all customer information from DB. 
select * from customer;
-- list different countries.
select distinct country from country;
-- Display all active customers. 
select * from customer;
SELECT 
    CONCAT(first_name, last_name) as Name
FROM
    customer
WHERE
    active = 1;
-- list of all rental IDs for customer with ID 1. 
select rental_id from rental where customer_id=1;
-- display all the films whose rental duration is greater than 5 . 
select title from film where rental_duration > 5;
-- list the total number of films whose replacement cost is greater than $15 and less than $20. 
select count(title) from film where replacement_cost between 15 and 20;
select count(title) from film where replacement_cost > 15 and replacement_cost<20;
-- display the count of unique first names of actors. 
select count(distinct(first_name)) from actor;
-- display the first 10 records from the customer table .
select * from customer limit 10;
-- display the first 3 records from the customer table whose first name starts with ‘b’.
select * from customer where lower(first_name) like "b%" limit 3;
select * from customer where lower(substr(first_name,1,1)) = 'b' limit 3;
-- display the names of the first 5 movies which are rated as ‘G’.
select * from film where rating = 'g' limit 5;
-- find all customers whose first name starts with "a". 
select * from customer where substr(first_name,1,1) = 'a';
-- find all customers whose first name ends with "a". 
select * from customer where first_name like '%a';
-- Display the list of first 4 cities which start and end with ‘a’ . 
select city from city where city like "a%a";
select city from city where substr(city,1,1)='a' and substr(city,-1,1)='a';
-- find all customers whose first name have "NI" in any position. 
select concat(first_name,' ',last_name)as Name from customer where first_name like '%ni%';
-- Find all customers whose first name have "r" in the second position 
select concat(first_name,' ',last_name)as Name from customer where first_name like '_r%';
-- Find all customers whose first name starts with "a" and are at least 5 characters in length. 
select concat(first_name,' ',last_name)as Name from customer where first_name like 'a____%';
-- find all customers whose first name starts with "a" and ends with "o". 
select concat(first_name,' ',last_name)as Name from customer where first_name like 'a%o';
-- get the films with pg and pg-13 rating using IN operator. 
select title from film where rating in('pg','pg-13');
-- Get the films with length between 50 to 100 using between operator. 
select title from film where length between 50 and 100;
-- get the top 50 actors using limit operator. 
select concat(first_name," ",last_name)as Name from actor limit 50;
-- Get the distinct film ids from inventory table. 
select distinct(film_id) from inventory;
