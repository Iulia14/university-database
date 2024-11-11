-- ***********************************************
-- ***GROUP BY***
-- ***********************************************
-- GROUP BY split column(s) values in groups of similar values. 
-- GROUP BY group the columns(s) rows which have the same values
-- GROUP BY is used with aggregate functions, in most cases (sum, avg, count, max, min ....)

use university;

select *
from address
order by county;

-- ***************
-- single column
-- ***************
select county, 
count(city) cities_count  -- error 1140 -> using aggregated functions without group by
-- city -- error 1055 -> use columns 
from address
group by county;


-- ***************
-- multiple columns
-- ***************
select county, 
city 
from address
group by county, city;

-- ***************
-- the GROUP BY clause in applied on rows returned by WHERE condition
-- first is executed WHERE condition which filter table rows, then the GROUP BY clause is applied
-- WHERE is always placed before GROUP BY
-- ***************
select county, 
       count(city) cities_count  
from address
where county in ('Yorkshire', 'Perthshire')
group by county;

-- ***************
-- HAVING filter the groups resulted after GROUP BY was executed
-- HAVING is placed after GROUP BY clause
-- HAVING filter supports column names, aggragate functions or expresions used in GROUP BY 
-- ***************
select county, 
       count(city) cities_count  
from address
group by county
having count(city) < 2;

-- ***************
-- ORDER BY can be used  after GROUP BY or HAVING 
-- ORDER BY supports column names, aggragate functions or expresions used in GROUP BY 
-- ***************
select county, 
       count(city) cities_count  
from address
group by county
-- order by county;
order by cities_count desc;


-- ***************
-- with rollup - include extra super-aggregate summary rows, at each group by level (sub-totals and a grand totatl)
--             - any time the last grouping column changes, there is calculated an extra row, representing  sub-total or grand-total value
-- ex. a)for each group of states, a sub-total value is calculated for all counties
--     b)for all states and counties a grand-total value is calculated 
-- ***************
select state,
 county, 
 count(city) cities_count  
from address
group by state, county  with rollup;


-- with rollup
-- grouping functions are available to be used in the select list, having clause and order by
-- grouping(column) returns 1 when the column value is NULL
select state, 
county, 
count(city) cities_count,
grouping(state) as state_gr,
grouping(county) as county_gr
from address
group by state, county  with rollup;


-- with rollup
-- grouping functions + if - to display a message for superaggragated NULL values
select 
if(grouping(state),'All states number', state) as state_grouped,
if(grouping(county),'All counties number', county) as county_grouped,
count(city) cities_cnt
from address
group by state, county  with rollup;
