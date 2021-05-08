#1.Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем.
#Удалим значения из created_at и updated_at
update users
set created_at = null,
updated_at =null where id;
#Заполним их текущей датой и временем через now()
update users
set created_at = now() where id;
update users
set updated_at = now() where id;
#select * from users;

#2.Таблица users была неудачно спроектирована. Записи created_at и updated_at были заданы типом VARCHAR и в
# них долгое время помещались значения в формате "20.10.2017 8:10".
# Необходимо преобразовать поля к типу DATETIME, сохранив введеные ранее значения.
#Пересоздам таблицу с измененными полями. Делается для того, чтобы заполнить в правильном формате даты.
#Если задаю функцией now, при применении функции выдает ошибку, пришлось вручную
drop table if exists users;
create table users (
    id serial primary key,
    name varchar(255),
    birthday_at varchar(255),
    created_at varchar(255),
    updated_at varchar(255)
 );
insert into users (name, birthday_at, created_at, updated_at) values
    ('Александр', '1992.06.08', '20.10.2021 8:10', '23.10.2021 8:10'),
    ('Мария', '1992-05-03', '21.10.2021 8:10', '24.10.2021 8:10'),
    ('Иван', '1991-08-09', '22.10.2020 8:10', '25.10.2021 8:10');
    
update users 
set created_at = STR_TO_DATE(created_at, '%d.%m.%Y %H:%i'),
updated_at = STR_TO_DATE(updated_at, '%d.%m.%Y %H:%i') where id;
alter table users modify created_at datetime default now(); 
alter table users modify updated_at datetime default now() on update now();


#3.В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры:
# 0, если товар закончился и выше нуля, если на складе имеются запасы. Необходимо отсортировать записи
# таким образом, чтобы они выводились в порядке увеличения значения value. Однако, нулевые запасы 
#должны выводиться в конце, после всех записей.
#Введем данные в таблицу
INSERT INTO storehouses_products (value) VALUES
    (0),(2500),(0),(30),(500),(1),(352),(657);

SELECT * from storehouses_products order by case when value = 0 then true else false end, value;

#4(по желанию) Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае. Месяцы заданы в виде списка английских названий ('may', 'august')
select name from users 	where date_format(birthday_at, '%M') in ('may','august');

#5. (по желанию) Из таблицы catalogs извлекаются записи при помощи запроса. SELECT * FROM catalogs WHERE id IN (5, 1, 2); Отсортируйте записи в порядке, заданном в списке IN.
