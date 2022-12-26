use test;

-- добавление данных в таблицу

insert into users(age, bday, name)
values (20, "1983-11-24 02:15:44", 'Igor'), (25, "1987-10-26 05:22:48", 'Ilia');


-- обновление данных
update users 
set name = 'Robert', 
age = age + 1
where age >= 10 and age <= 30;

-- удаление даных из таблицы

delete from users
where age > 35;