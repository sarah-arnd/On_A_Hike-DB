-- Modifications files -- 

describe hikers;

alter table hikers drop favorites;
alter table hikers drop to_do;

select * from hikers;
select * from trails;
select * from camps;
select * from region;
set global sql_mode = (select replace ( @@sql_mode, 'ONLY_FULL_GROUP_BY', ''));


