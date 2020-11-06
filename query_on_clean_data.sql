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

select distinct *
from alldata
where position regexp 'Data Science';

select distinct *
from alldata
where position regexp 'Data Engineering';

select distinct *
from alldata
where position regexp 'Data Analytics';

select distinct *
from alldata
where position regexp 'machine learning';

select distinct *
from alldata
where position regexp 'Deep learning';
