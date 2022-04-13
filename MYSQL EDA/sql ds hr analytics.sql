use HR_Analytics 

select * from consolidated_search_ds
 select `Career Level` from consolidated_search_ds

select count(*) from consolidated_search_ds
select  count(distinct company) from consolidated_search_ds 
select count( distinct Industry) from consolidated_search_ds
 
-- Total Career Level
select distinct `Career Level` from consolidated_search_ds

-- Top Companies and total jobs
select Company, count(*)  from consolidated_search_ds
group by Company order by count(*) desc
--  Total Jobs by career level
select `Career Level`, count(*) from consolidated_search_ds
group by `Career Level` order by count(*) desc
 -- Total jobs by Data Science Job Role
select `Search Term`, count(*) from consolidated_search_ds
group by `Search Term` order by count(*) desc
-- Total jobs openings in companies for Data Scientist
select company, count(*) from consolidated_search_ds where `Search Term` = 'Data Scientist'
group by company order by count(*) desc
-- Total jobs openings in companies for Data Analyst
select company, count(*) from consolidated_search_ds where `Search Term` = 'Data Analyst'
group by company order by count(*) desc
-- domain wise jog openings
-- for Data Scientist
select industry, count(*) from consolidated_search_ds where `Search Term` = 'Data Scientist'
group by industry order by count(*) desc
-- For Data Analyst
select industry, count(*) from consolidated_search_ds where `Search Term` = 'Data Analyst'
group by industry order by count(*) desc
-- For Data Engineer
select industry, count(*) from consolidated_search_ds where `Search Term` = 'Data Engineer'
group by industry order by count(*) desc

-- job openings by the career levels
-- for Data Engineers
select `Career Level`, count(*) from consolidated_search_ds where `Search Term` = 'Data Engineer'
group by `Career Level` order by count(*) desc
-- for Machine Learning Engineers
select `Career Level`, count(*) from consolidated_search_ds where `Search Term` = 'Machine Learning Engineer'
group by `Career Level` order by count(*) desc
-- for Business Intelligence
select `Career Level`, count(*) from consolidated_search_ds where `Search Term` = 'Business Intelligence'
group by `Career Level` order by count(*) desc









