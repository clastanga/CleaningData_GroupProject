drop table companies;

create table companies (
	ID int not null primary key,
	position varchar(225),
	company varchar(225),
	reviews int not null,
	size varchar(225),
	industry text,
	location varchar(225),
	state varchar(225),
	zip_code int,
	description text
	);
	


select * from companies;

#Data Science 

drop view data_analyst_size_industry;

#create view Data_Science_size_industry as
select count(position), industry, size,
rank() over(order by count(position) desc) as position_rank
from companies
where position regexp 'Data Scientist|Data scientist|data scientist|Scientist|scientist' 
group by industry, size
order by position_rank asc, count(position) desc;

#Data Analyst

select count(industry) as counts, industry, size
from companies
where position regexp 'Data Analyst|Data analyst|data analyst|Analyst|analyst'
group by industry, size
order by size desc, counts desc;

#Engineer|engineer|Programmer|programmer|Developer|developer

select count(industry) as counts, industry, size
from companies
where position regexp 'Engineer|engineer|Programmer|programmer|Developer|developer'
group by industry, size
order by size desc, counts desc;

select distinct state, count(position)
from companies
where position regexp 'Engineer|engineer|Programmer|programmer|Developer|developer'
group by state
order by count(position) desc;

select distinct industry, count(position)
from companies
where position regexp 'Engineer|engineer|Programmer|programmer|Developer|developer'
group by industry
order by count(position) desc;


select * from companies
order by position_id;


drop view 23andme_alldata; 

create view 23andme as
select * from companies
where company regexp "23";