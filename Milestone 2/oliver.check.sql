-- CHECK FOREIGN KEY EMPLOYEE

select *
from employee;

select *
from office;

delete from office
where city = 'Genève';

update office
set id = 7
where city = 'Bern';

-- CHECK FOREIGN KEYS TRIP

select *
from trip;

select *
from activity;

select *
from has_activity;

delete from trip
where id = 3;

update trip
set id = 4
where id = 1;

delete from activity
where id = 4;

update activity
set id = 4
where id = 2;