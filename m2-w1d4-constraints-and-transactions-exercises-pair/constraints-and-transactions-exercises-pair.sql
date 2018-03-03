-- Write queries to return the following:
-- Make the following changes in the "world" database.

-- 1. Add Superman's hometown, Smallville, Kansas to the city table. The 
-- countrycode is 'USA', and population of 45001. (Yes, I looked it up on 
-- Wikipedia.)

--insert into city(name, population, countrycode, district)
--values('smaaallville', 45001, 'usa', 'kansas', 55555)

-- 2. Add Kryptonese to the countrylanguage table. Kryptonese is spoken by 0.0001
-- percentage of the 'USA' population.

--insert into countrylanguage(language, countrycode, isofficial, percentage)
--values('kryptonese', 'usa', 1, .0001)

--select countrylanguage.*
--from countrylanguage
--where language = 'kryptonese' 


-- 3. After heated debate, "Kryptonese" was renamed to "Krypto-babble", change 
-- the appropriate record accordingly.

--update countrylanguage
--set language = 'Krypto-babble'
--where language = 'Kryptonese'

-- 4. Set the US captial to Smallville, Kansas in the country table.

--update country
--set capital = 6789
--where code = 'USA'

-- 5. Delete Smallville, Kansas from the city table. (Did it succeed? Why?)

--delete from  city
--where id = 1337

-- 6. Return the US captial to Washington.
--select capital from country
--where country.code = 'usa'
--update country
--set capital = 3813
--where country.code = 'usa'


-- 7. Delete Smallville, Kansas from the city table. (Did it succeed? Why?)
--delete from  city
--where id = 1337
--no its already delet

-- 8. Reverse the "is the official language" setting for all languages where the
-- country's year of independence is within the range of 1800 and 1972 
-- (exclusive). 
-- (590 rows affected)

--update countrylanguage 
--set countrylanguage.isofficial = reverse(countrylanguage.isofficial)
--from countrylanguage
--join country on country.code = countrylanguage.countrycode
--where country.indepyear >= 1800 and country.indepyear <= 1972

-- 9. Convert population so it is expressed in 1,000s for all cities. (Round to
-- the nearest integer value greater than 0.)
-- (4079 rows affected)

--update city
--set population = round(population /1000 , 0)

-- 10. Assuming a country's surfacearea is expressed in miles, convert it to 
-- meters for all countries where French is spoken by more than 20% of the 
-- population.
-- (7 rows affected)
--select surfacearea , countrylanguage.language, countrylanguage.percentage
--from country
--join countrylanguage on countrylanguage.countrycode = country.code
--where countrylanguage.percentage > 20 and countrylanguage.language= 'french'


--is percentage real or not?
update country
set surfacearea *= 1609.34 
from country
join countrylanguage on countrylanguage.countrycode = country.code
where countrylanguage.percentage > 20 and countrylanguage.language= 'french'