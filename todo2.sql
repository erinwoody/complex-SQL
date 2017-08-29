$ brew services list
$ createdb todolist
$ psql todolist
$ create table todos

create table todos (
    id SERIAL PRIMARY KEY, 
    title VARCHAR(255) NOT NULL, 
    details TEXT NULL, 
    priority INT NOT NULL DEFAULT '1', 
    created_at DATE NOT NULL, 
    completed_at DATE NULL
    );

-- Write INSERT statements to insert five todos into this table, with one of them completed.
insert into todos (title, created_at) 
values ('feed dog', 'Monday August 4, 2015');
('go shopping', 'June 5, 2015'), 
('homework', 'March 5, 2014'), 
('laundry', 'March 5, 2014'), 

insert into todos (title, created_at, completed_at) 
values ('dishes', 'June 8, 2016', 'June 9, 2016');

-- Write a SELECT statement to find all incomplete todos.
select * from todos where completed_at is null;

-- Write a SELECT statement to find all todos with a priority above 1.
select * from todos where priority = 1;

-- Write an UPDATE statement to complete one todo by its id. Your ids may differ, so you will choose the id to up.
update todos set completed_at = 'August 25, 2017' where id = '3';

-- Write a DELETE statement to delete all completed todos.
delete from todos where completed_at is NOT null;
