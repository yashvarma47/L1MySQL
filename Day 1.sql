CREATE database library;
use library;
create table books(
	book_no int(10), 
    book_name varchar(20),
    author_name varchar(30),
    cost int(10),
    category char(20)
);
desc books;
insert into books values(101, 'Let us C', 'Dines Ritchie', 450, 'System'), 
	(102, 'Oracle- Complete Ref', 'Loni', 550, 'Database'),
    (103, 'Mastering SQL', 'Loni', 250, 'Database'),
    (104, 'PL SQL Ref', 'Scott urman', 750, 'Database');
-- 1] select all the records
select * from books;
select * from books where cost>=500 AND cost<=700;
select * from books where book_name LIKE 'O%';
select * from books where  cost > (SELECT AVG(cost) FROM books);
create table books_new as (select * from books);
 select * from books_new;
create  table onlydb  as (select * from books where category = 'Database');
select * from books where cost= (select max(cost) from books);
select * from books where cost= (select min(cost) from books);
-- select * from books group by author_name having count(*)>1;

update books set cost = cost + 150 where book_name like '%Let%';
SET SQL_SAFE_UPDATES = 0;
select * from books;
select book_name  from books where category = 'Database';
select book_name, cost from books where category = 'Database' OR category = 'System';
alter table books add published_year int(5);
select * from books;

update books set published_year = 2002 where Author_name Like  'Loni';



