----------------
-- LAB 4 SQL --
---------------- 

use sakila;

-- 1. Get film ratings.
select distinct rating as Film_rating from sakila.film;

-- 2. Get release years.
select distinct release_year as Release_years from sakila.film;

-- 3. Get all films with ARMAGEDDON in the title.
select * from sakila.film where title ='ARMAGEDDON';
select count(*) as films_with_ARMAGEDDON_in_the_title from sakila.film where title ='ARMAGEDDON';

-- 4. Get all films with APOLLO in the title
select * from sakila.film where title ='APOLLO';
select count(*) as films_with_APOLLO_in_the_title from sakila.film where title ='APOLLO';

-- 5. Get all films which title ends with APOLLO.
select title as films_ends_with_APOLLO from sakila.film where title regexp 'APOLLO$';

-- 6. Get all films with word DATE in the title.
select title as title_whith_word_date_in_title from sakila.film where title regexp 'DATE';

-- 7. Get 10 films with the longest title.
select * from sakila.film order by length(title) desc limit 10;


-- 8. Get 10 the longest films.
select title, length from sakila.film order by length desc limit 10;

-- 9. How many films include **Behind the Scenes** content?
select count(*) as films_with_Behind_the_Scenes from sakila.film where special_features regexp 'Behind the Scenes';

-- 10. List films ordered by release year and title in alphabetical order.
select * from film order by release_year, title asc;