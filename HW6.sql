 # 1. Пусть задан некоторый пользователь. Из всех друзей этого пользователя найдите человека, который больше всех общался с нашим пользователем.

#Первое знакомство с joinами
select from_user_id,
	concat(u.firstname, ' ', u.lastname) as name,
	count(*) as 'messages count'
from messages m
join users u on u.id = m.from_user_id where to_user_id = 51
group by from_user_id
order by count(*) desc

# 2. Подсчитать общее количество лайков, которые получили пользователи младше 10 лет.
-- ПРИШЛОСЬ ГУГЛИТЬ, ПРО ОБЕРТКУ СЕЛЕКТ В СЕЛЕКТ (по другому как найти юзеров младше 10 лет не понял)
-- ПЫТАЛСЯ СДЕЛАТЬ С ПОМОЩЬЮ CURRENT_DATE - ВЫДАВАЛО ОШИБКУ ВСЕ ВРЕМЯ, ПРИШЛОСЬ ИСКАТЬ ОБХОДНОЙ ПУТЬ

select count(user_id) from (
	select user_id, (select birthday from profiles  where profiles.user_id = likes.user_id) as birthday from likes
    order by birthday DESC limit 10) as T;

# 3. Определить кто больше поставил лайков (всего): мужчины или женщины

select gender,count(*)
from (select user_id as users,(select gender from profiles where user_id = users) as gender from likes) as search
group by gender;