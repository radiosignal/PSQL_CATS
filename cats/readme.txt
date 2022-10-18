
Виктор, Добрый день!

Спасибо за заметки!

"1. Часть таблиц именована в единственном, часть в множественном числе, лучше использовать единый стиль. "

-Исправлен!

"2. Подумайте можно ли объединить пилотов и сопилотов в одну таблицу."
Обьединить  в составные типы можно конечно! Вот тут такая штука- co_pilot являет собой улучшение для car линейно увеличивая потенциал машинки!

3. championship_statuses - такого рода статусы имеет смысл поместить в ENUM.
Колонка добавлена тип champion_result
, данные запрашиваются из champ_result 

SELECT championship_name, 
championship_level_name,
started_at::varchar(4) AS start_at_year,
(SELECT name_id FROM pilot WHERE pilot.id=championship.id),
(SELECT(SELECT champ_result::championship_result  FROM championship_statuses WHERE pilot.status_id = championship_statuses.id ) status_id FROM pilot WHERE pilot.id=championship.id)AS result
FROM championship
ORDER BY started_at  DESC 
