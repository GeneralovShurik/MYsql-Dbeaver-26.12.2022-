use test;

 -- функции и операторы работы со строками
select * from users 
where name like 'Robert';

select * from users 
where name not like 'Robert';

-- select * from users 
-- where name not (age = 10);
-- like только для строк



-- % - заменяет любую последовательность символов любой длины
-- like 'A%m'; Artem, Aram, Am...
-- _ - заменяет ровно один символ
-- like 'A_s_m%kn_m'; 

select * from users 
where name like '%l_a';

-- основные встроеные функции для работы со строками
select 
concat('[', name, ']'), -- объединение строк (неограниченное количество)
lower(name), -- приводит строку к нижнему регистру
upper (name), -- приводит строку к верхнему регистру
length(name), -- длина строки
substring(name, 2, 5)-- со 2-й строки начинаем обрезать, 5 - на 5 символов обрежем
from users
where length (name) > 5;

-- основные встроеные функции для работы с датами
select 
time(bday),
year(bday),
month (bday),
week(bday),
day(bday),
hour(bday),
minute(bday),
second(bday),

-- текущая дата

now(),

-- разница между датами

datediff(bday, now()) * 24,
unix_timestamp(bday),
unix_timestamp(now()),
date_add(now(),interval - 23 day),
date_add(now(),interval - 100 hour)

from users;

-- aggregate - агрегатные функции, результат только одна строка

select 
sum(age),
sum(name),
avg(id),
max(bday),
min(name),
count(bday)
from users;

select


