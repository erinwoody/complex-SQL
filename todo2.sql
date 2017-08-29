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







-- Write INSERT statements to insert 20 todos into the todos table, with a combination of priorities, created times, and 
-- completed times, with not all having a completed time.
insert into todos (title, priority, created_at, completed_at)
values ('homework', 1, 'August 28, 2017', 'August 29, 2017'),
('project', 1, 'August 28, 2017', 'August 29, 2017'),
('feed dog', 1, 'August 28, 2017', 'August 28, 2017'),
('feed cat', 1, 'August 28, 2017', 'August 28, 2017'),
('buy bread', 1, 'August 28, 2017', 'August 28, 2017'),
('read book', 1, 'August 28, 2017', 'August 28, 2017'),
('watch tv', 1, 'August 27, 2017', 'August 28, 2017'),
('project2', 1, 'August 27, 2017', NULL),
('gym', 1, 'August 28, 2017', 'August 28, 2017'),
('water plants', 1, 'August 28, 2017', 'August 28, 2017'),
('buy shoes', 1, 'August 28, 2017', 'August 28, 2017'),
('get haircut', 1, 'August 28, 2017', NULL),
('laundry', 1, 'August 28, 2017', 'August 28, 2017'),
('gas', 1, 'August 28, 2017', 'August 28, 2017'),
('clean house', 1, 'August 28, 2017', 'August 28, 2017'),
('paint', 1, 'August 28, 2017', 'August 28, 2017'),
('walk dog', 1, 'August 28, 2017', NULL),
('school', 1, 'August 28, 2017', 'August 28, 2017'),
('project3', 1, 'August 28, 2017', 'August 28, 2017'),
('dentist', 1, 'August 28, 2017', 'August 28, 2017');

alter table todos alter column priority drop default;

update todos set priority = 3 where id =7;
update todos set priority = 3 where id =20;
update todos set priority = 3 where id =24;
update todos set priority = 5 where id =14;
update todos set priority = 5 where id =8;

-- Write a SELECT statement to find all incomplete todos with priority 3.
select * from todos where completed_at = NULL and priority = 3;

-- Write a SELECT statement to find the number of incomplete todos by priority.
select count(priority) from todos where completed_at = NULL;

-- Write a SELECT statement to find the number of todos by priority created in the last 30 days.
select count(priority) from todos where created_at >= '2017-07-30 0:00:00'; 

-- Write a SELECT statement to find the next todo you should work on. This is the todo with the highest priority that was created first.

select * from todos where priority = 1 and created_at = (select min(created_at) from todos where priority = 1);

