-- 111111111111111111111111111




SELECT * FROM movies
where id = 6;



SELECT * FROM movies
where year between 2000 and 2010;



SELECT * FROM movies
where year not between 2000 and 2010;


SELECT * FROM movies
limit 5;



-- 22222222222222222222222222222


SELECT * FROM movies
where title like 'Toy%';



SELECT * FROM movies
where director like 'John%';



SELECT * FROM movies
where director not like 'John%';


SELECT * FROM movies
where title like 'WALL-%';




-- 3333333333333333333333333333333


SELECT distinct director FROM movies
order by director;


SELECT * FROM movies
order by year desc
limit 4;


SELECT * FROM movies
order by title
limit 5;



SELECT * FROM movies
order by title
limit 5
offset 5;




-- 4444444444444444444444444444444444

SELECT * FROM north_american_cities
where country like 'Canada';




SELECT * FROM north_american_cities
where country like 'United States'
order by latitude desc;




SELECT *
FROM north_american_cities
WHERE longitude < (select longitude from north_american_cities where city = 'Chicago')
ORDER BY longitude ASC;




SELECT * 
FROM north_american_cities
where country = 'Mexico'
order by population desc
limit 2;





SELECT * 
FROM north_american_cities
where country = 'United States'
order by population desc
limit 2
offset 2;



-- 55555555555555555555555555555

SELECT * FROM movies m
join boxoffice b on m.id = b.movie_id;



SELECT * FROM movies m
join boxoffice b on m.id = b.movie_id
where international_sales > domestic_sales;



SELECT * FROM movies m
join boxoffice b on m.id = b.movie_id
order by rating desc;




-- 66666666666666666666666666666666666

Find the list of all buildings that have employees 

SELECT distinct building FROM employees e
full join buildings b on e.building = b.building_name;


Find the list of all buildings and their capacity

SELECT  * FROM buildings ;



List all buildings and the distinct employee roles in each building (including empty buildings)

select building_name, role from buildings b 
left join employees e on b.building_name = e.building
group by building_name, role
;







-- 7777777777777777777777777777777777777777777




-- Find the name and role of all employees who have not been assigned to a building 

select * from  employees 
where building  is null;


-- Find the names of the buildings that hold no employees 

select building_name, role from buildings b 
left join employees e on b.building_name = e.building
where role is null;




-- 8888888888888888888888888888888888888


-- List all movies and their combined sales in millions of dollars

SELECT title, (domestic_sales + international_sales) / 1000000 AS gross_sales_millions
FROM movies
  JOIN boxoffice
    ON movies.id = boxoffice.movie_id;



-- List all movies and their ratings in percent 

SELECT title, rating * 10 AS rating_percent
FROM movies
  JOIN boxoffice
    ON movies.id = boxoffice.movie_id;



-- List all movies that were released on even number years 

select * from movies 
where year%2 == 0;








-- 9999999999999999999999999999999999999999999999999







-- Find the longest time that an employee has been at the studio 

SELECT * FROM employees
order by years_employed desc
limit 1;





-- For each role, find the average number of years employed by employees in that role 


SELECT role,avg(years_employed) FROM employees
group by role;






-- Find the total number of employee years worked in each building


SELECT building, SUM(years_employed) as Total_years_employed
FROM employees
GROUP BY building;






-- 101010101010101010011001000100001001010010110010110




-- Find the number of Artists in the studio (without a HAVING clause)

SELECT *,count() FROM employees
where role = 'Artist'
group by role;



-- Find the number of Employees of each role in the studio 

SELECT *,count(*) FROM employees
group by role;




-- Find the total number of years employed by all Engineers 


SELECT *,sum(years_employed) FROM employees
where role = 'Engineer'
group by role;


-- 121212121212121212121212121212121212121212


-- Find the number of movies each director has directed 

SELECT *,count(*) FROM movies
group by director;




-- Find the total domestic and international sales that can be attributed to each director 

SELECT *,sum(domestic_sales+international_sales) FROM boxoffice b
join movies m on b.movie_id = m.id
group by director;







-- 13131313131313131313131313131313131313131313131313131313









-- Add the studio's new production, Toy Story 4 to the list of movies (you can use any director)


insert into movies values(33,'Toy Story 4','John Lasseter',2025,120);



-- Toy Story 4 has been released to critical acclaim! It had a rating of 8.7, and made 340 million domestically and 270 million internationally. Add the record to the BoxOffice table. ✓




insert into boxoffice  values(33,8.7,340456236,270564327);





-- 1414141414141414141414141414141414141414141414141414141414141414141414141414


-- The director for A Bug's Life is incorrect, it was actually directed by John Lasseter 


update movies
set director = 'John Lasseter'
where title = "A Bug's Life";


-- The year that Toy Story 2 was released is incorrect, it was actually released in 1999 

update movies
set year = 1999
where title = "Toy Story 2";




-- Both the title and director for Toy Story 8 is incorrect! The title should be "Toy Story 3" and it was directed by Lee Unkrich 

update movies
set director = 'Lee Unkrich' , title = 'Toy Story 3'
where title = "Toy Story 8";



-- 151515151515151515151515151515151515151515151515151515151515151515151515151515151515



-- This database is getting too big, lets remove all movies that were released before 2005.

delete from movies
where year < 2005;



-- Andrew Stanton has also left the studio, so please remove all movies directed by him.

delete from movies
where director = 'Andrew Stanton';





-- 161616161616161616161616161616161616161616161616161616161616


-- Create a new table named Database with the following columns:
-- Name A string (text) describing the name of the database
-- Version A number (floating point) of the latest version of this database
-- Download_count An integer count of the number of times this database was downloaded
-- This table has no constraints. 



create table Database('Name' text, 'Version' float, 'Download_count' int);



-- 1717171717171717171717171717171717171717171717171717171717171717171717


-- Add a column named Aspect_ratio with a FLOAT data type to store the aspect-ratio each movie was released in. 


alter table movies
add Aspect_ratio float;

-- Add another column named Language with a TEXT data type to store the language that the movie was released in. Ensure that the default for this language is English. ✓


alter table movies
add Language text 
default 'English'
;



-- 18181818181818181818181818181818181818181818181818181818181818181818


-- We've sadly reached the end of our lessons, lets clean up by removing the Movies table

drop table movies;


-- And drop the BoxOffice table as well 

drop table BoxOffice;






























