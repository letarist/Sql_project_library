#Сделал с упором на БД, которую мы делали на уроке.
#Если я правильно понял, то нужно было кинуть только запросы на создание таблиц, если нужно было с 0 делать, 
#вместе с create database, use и прочим, то я переделаю. А так все таблички и связи добавились, все отлично
drop table if exists ads;
create table ads(
	id serial,
	user_id bigint unsigned not null,
	body text,
	media blob,
	created_at datetime default now(),
	updated_at datetime on update now(),
    foreign key (user_id) references users(id)
)comment 'Объявления';
drop table if exists techsupport;
create table techsupport(
	message_id serial,
    user_id bigint unsigned not null,
    body text,
    foreign key (message_id) references messages(id_message),
    foreign key (user_id) references users(id)
)comment 'Сообщение в техподдержку';
drop table if exists gift;
create table gift(
	id serial,
    from_user_id bigint unsigned not null,
    to_user_id bigint unsigned not null,
    message varchar(100),
    foreign key (from_user_id) references users(id),
    foreign key (to_user_id) references users(id)
)comment 'Подарки';