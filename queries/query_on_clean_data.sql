drop table alldata;

create table alldata (
position_id int not null,
position varchar(225),
company varchar(255),
reviews int,
location varchar(225),
state char(10),
zip_code char(10),
primary key (position_id)
);

select count(*)
from alldata;

select distinct company, sum(reviews) as num_reviews
from alldata
group by company
order by num_reviews desc
limit 100 
;


select distinct count(*)
from alldata
where position regexp 'Data Science';


select distinct count(*)
from alldata
where position regexp 'Data Engineering';

select distinct count(*)
from alldata
where position regexp 'Analyst';

select distinct *
from alldata
where position regexp 'machine learning';

select distinct *
from alldata
where position regexp 'Deep learning';

create table description (
position_id int not null,
description text
);

select *
from description;

select *
from alldata a
left join description d
on a.position_id = d.position_id;
