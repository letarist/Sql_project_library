#1.Подсчитайте средний возраст пользователей в таблице users
#Это вы на уроке показали, спасибо, всю голову себе измотал
select avg(timestampdiff(year, birthday_at,now())) from users; 

#2. Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. Следует учесть, что необходимы дни недели текущего года, а не года рождения.
SELECT CASE WEEKDAY(birthday_at) WHEN 0 THEN 'Понедельник' WHEN 1 THEN 'Вторник' WHEN 2 THEN 'Среда' WHEN 3 THEN 'Четверг' WHEN 4 THEN 'Пятница' WHEN 5 THEN 'Суббота' WHEN 6 THEN 'Воскресенье' ELSE -1 END as wd, COUNT(birthday_at) as num FROM users GROUP BY wd ORDER BY FIELD(wd,'Понедельник','Вторник','Среда','Четверг','Пятница','Суббота','Воскресенье');
SELECT DATE_FORMAT(DATE(CONCAT_WS('-', YEAR(NOW()), MONTH(birthday_at), DAY(birthday_at))), '%W') AS day, COUNT(*) AS total FROM users GROUP BY day ORDER BY otal DESC;

#3. ??? ВООБЩЕ БЕЗ ПОНЯТИЯ КАК ЭТО РЕШИТЬ