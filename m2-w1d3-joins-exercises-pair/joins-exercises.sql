-- Write queries to return the following:
-- The following queries utilize the "world" database.

-- 1. The city name, country name, and city population of all cities in Europe with population greater than 1 million
-- (36 rows)
--select city.name, country.name, city.population
-- from city join country on country.code = city.countrycode
-- where city.population > 1000000 and continent = 'europe';
-- 2. The city name, country name, and city population of all cities in countries where French is an official language and the city population is greater than 1 million
-- (2 rows)
--select city.name,country.name, city.population
--from city join country on city.countrycode = country.code 
--join countrylanguage on country.code = countrylanguage.countrycode
--where countrylanguage.language = 'french' and city.population > 1000000 and countrylanguage.isofficial = 'true'
-- 3. The name of the countries and continents where the language Javanese is spoken
-- (1 row)
--select country.name, countrylanguage.language
--from country join countrylanguage on country.code = countrylanguage.countrycode
--where countrylanguage.language = 'javanese'
-- 4. The names of all of the countries in Africa that speak French as an official language
---- (5 row)
--select country.name
--from country join countrylanguage on country.code = countrylanguage.countrycode
--where country.continent = 'africa' and countrylanguage.language= 'french' and countrylanguage.isofficial = 'true'
-- 5. The average city population of cities in Europe
-- (average city population in Europe: 287,684)
--select avg(city.population) as lul
--from country join city on country.code = city.countrycode
--where continent = 'europe'

-- 6. The average city population of cities in Asia
-- (average city population in Asia: 395,019)
--select avg(city.population) as lul
--from country join city on country.code = city.countrycode
--where continent = 'asia'

-- 7. The number of cities in countries where English is an official language
-- (number of cities where English is official language: 523)

--select city.name
--from countrylanguage join city on countrylanguage.countrycode = city.countrycode
--where language = 'english' and countrylanguage.isofficial = 'true'

-- 8. The average population of cities in countries where the official language is English
 --(average population of cities where English is official language: 285,809)
--select AVG(city.population)
--from city join countrylanguage on city.countrycode = countrylanguage.countrycode
--where countrylanguage.language = 'english'  and countrylanguage.isofficial = 'true'

-- 9. The names of all of the continents and the population of the continent’s largest city
-- (6 rows, largest population for North America: 8,591,309)
--select max(city.population), country.continent
--from country join city on country.code = city.countrycode
--group by country.continent

-- 10. The names of all of the cities in South America that have a population of more than 1 million people and the official language of each city’s country
-- (29 rows)

--select city.name, countrylanguage.language
--from city join country on city.countrycode = country.code
--join countrylanguage on country.code = countrylanguage.countrycode
--where country.continent = 'south america' and city.population > 1000000 and countrylanguage.isofficial = 'true'
