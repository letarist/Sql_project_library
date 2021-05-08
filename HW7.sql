-- 1  Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.

select u.name from users as u
join orders as o where(o.user_id=u.id)
group by u.name	
having count(o.id) > 0;


-- 2 Выведите список товаров products и разделов catalogs, который соответствует товар

select c.name,p.name from
catalogs as c
join
products as p
on c.id = p.catalog_id;

-- (по желанию) Есть таблица рейсов flights (id, from, to) и таблица городов cities (label, name).
-- Поля from, to и label содержат английские названия городов, поле name — русское.
-- Выведите список рейсов (flights) с русскими названиями городов.
 
 drop database if exists flying;
 create database flying;
 use flying;
 
   drop table if exists cities;
  create table cities (label varchar(255) primary key,
 `name` varchar (255));
 
create table if not exists flights(
	id serial primary key,
	`from` varchar(50) not null, 
	`to` varchar(50) not null
);

 
 alter table flights add constraint from_label
 foreign key (`from`) 
 references cities(label);
 
 insert cities(label, name)
values ('moscow','Москва'),('irkutsk','Иркутск'),
	  ('novgorod','Новгород'),('kazan','Казань'),
	  ('omsk','Омск');

 insert flights  values (null, 'moscow','omsk'),(null, 'novgorod','kazan'),
	  (null, 'irkutsk','moskow'),(null, 'omsk','irkutsk'),
	  (null, 'moscow','kazan');
       
 
select
	id,(select name from cities where label = `from`) as `from`, (select name from cities where label = `to`) as `to`
from flights;