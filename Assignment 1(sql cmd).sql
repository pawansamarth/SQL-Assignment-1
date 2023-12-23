-- Q1)Identify the primary keys and foreign keys in mavenmovies db. Discuss the differences.
select TABLE_NAME, COLUMN_NAME 
FROM
information_schema.KEY_COLUMN_USAGE
WHERE CONSTRAINT_NAME='PRIMARY'
AND TABLE_SCHEMA ='mavenmovies';

select
constraint_name
table_name,
column_name,
referenced_table_name,
referenced_column_name
from
 information_schema.KEY_column_usage 
where
constraint_name!='PRIMARY'
 AND referenced_table_name is not 
 null
  and Table_SCHEMA ='mavenmovies';

-- Q2)List all details of actors?
select * from actors;

 -- Q3)List all customer information from db?
 select * from customer;
 
 -- Q4) List different countries?
 select distinct country from country;
 
 -- Q5)Display all active customers?
 select * from customer where active=1;
 
 -- Q6)List of all rental IDs for customer with ID 1.
 select customer_id, rental_id from rental where customer_id=1;
 
 -- Q7) Display all the films whose rental duration is greater than 5?
 select film_id, title, rental_duration from film where rental_duration>5;
 
 -- Q8)List the total number of films whose replacement cost is greater than $15 & less than $20?
 select count(*) as total_film from film where replacement_cost between 15 and 20;
 select count(*) as total_no_of_film from film where replacement_cost>15 and replacment_cost<20;
 
  -- Q9)Find the number of films whose rental rate is less than $1?
  select count(film_id) as no_of_films from film where rental_rate<1;
  select count(*) as no_of_films from film where rental_rate <1;
  
  -- Q10)Display the count of unique first names of actors.
  select count(distinct first_name) as first_name_count from actor;
  
  -- Q11)Display the first 10 records from the customer table?
  select * from CUSTOMER limit 10;
  
  -- Q12)Display the first 3 records from the customer table whose first name starts with 'b'?
  select first_name from customer where first_name like 'b%' limit 3;
  
-- Q13)Display the names of the first 5 movies which are rated as 'G' ?
select title, rating from film where rating='G' limit 5;

-- Q14)Find all the customers whose first name starts with "a" ?
select first_name from customer where first_name like 'a%';

-- Q15)Find all customers whose first name ends with "a"?
select first_name from customer where first_name like '%a';

-- Q16)Display the list of first 4 cities which start and end with 'a' ?
select city from city where city like 'a%a';

-- Q17)Find all customers whose first name have "NI" in any position ?
select first_name from customer where first_name like "%NI%";

-- Q18)Find all customers whose first name have "r" in the second position ?
select first_name from customer where first_name like "_r%";

-- Q19)Find all customers whose first name starts with "a" & are atleast 5 characters in length ?
select first_name from customer where first_name like 'a%' and length(first_name)>=5;
  
-- Q20)Find all customers whose first name starts with "a" and ends with "o" ?
select first_name from customer where first_name like "a%o";

-- Q21)Get the films with pg and pg-13 rating using IN operator?
select title, rating from film where rating in ("pg","pg-13");

-- Q22)Get the films with length between 50 to 100 using between operator.
select title,length from film where length between 50 and 100;

-- Q23) Get the top 50 actors using limit operator ?
select*from actor order by actor_id desc limit 50;

-- Q24)Get the distinct film ids from inventory table ?
select distinct film_id from inventory;




