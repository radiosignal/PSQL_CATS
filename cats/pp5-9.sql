
--mult_table_requests
--5.1
-- ВЫбираем из трех таблиц номер участника(table car.car_id ), установленное вооружение(table weapon.weapon_name),
-- берем столбец убойной силы (table weapon.atack) как основу для группирования и в порядке убывания определяем 
-- номер машины с наибольшими убойными показателямии и ее характиристики.

SELECT id AS car_id,
(SELECT weapon_name  FROM weapon WHERE weapon.id = car.id ),
(SELECT MAX(atack) AS car_force FROM weapon WHERE weapon.id = car.id ),
(SELECT  health AS car_health FROM body WHERE body.id = car.id )
FROM car GROUP BY car_id ORDER BY car_force DESC LIMIT 10;


--5.2 
--Определяем в каком чемпионате (championship_name), в какой лиге championship_level_name, в каком году(started_at) и с каким результатом(status_name) 
-- участник(name_id) завершил чемпионат.

SELECT championship_name, 
championship_level_name,
started_at::varchar(4) AS start_at_year,
(SELECT name_id FROM pilot WHERE pilot.id=championship.id),
(SELECT(SELECT status_name  FROM championship_statuses WHERE pilot.status_id = championship_statuses.id ) status_id FROM pilot WHERE pilot.id=championship.id)AS result
FROM championship
ORDER BY started_at  DESC 



--requests_upon_joined_tables
--6.1
--Определяем пилотов победителей

SELECT 
status_name,  
pilot.*
FROM championship_statuses
LEFT JOIN pilot
ON pilot.status_id = championship_statuses.id
WHERE status_name = 'win';

--6.2
--Определяем пилотов, номера тачек, вид оружия, ник участника по силам выше среднего 

SELECT DISTINCT
name_id AS Pilot_name,
car.id AS CAR_number,
weapon.weapon_name AS weapon,
users.nick_name AS User_nick,
weapon.atack  AS force
FROM pilot
LEFT JOIN users
ON users.user_id = pilot.id
INNER JOIN car
ON car.id = pilot.id
RIGHT JOIN weapon
ON weapon.id = car.id

WHERE weapon.atack >= (SELECT AVG( weapon.atack)FROM weapon) AND users.nick_name != 'NULL'
ORDER BY weapon.atack  LIMIT 10;


--VieWs
--7.1

CREATE VIEW pilot_features AS
SELECT DISTINCT
name_id AS Pilot_name,
car.id AS CAR_number,
weapon.weapon_name AS weapon,
users.nick_name AS User_nick,
weapon.atack  AS force,
championship.started_at
FROM pilot
LEFT JOIN users
ON users.user_id = pilot.id
INNER JOIN car
ON car.id = pilot.id
RIGHT JOIN weapon
ON weapon.id = car.id
JOIN championship
ON pilot.id = championship.id;

--Выбираем из выборки представленной запросом pilot_features участников с атрибутами стартоваших за последнй год.
SELECT DISTINCT * FROM pilot_features WHERE started_at > (current_timestamp - interval '1 year') AND user_nick != 'NULL');

--Выбираем из выборки представленной запросом pilot_features участников на тачке с номером 5.
SELECT DISTINCT * FROM pilot_features WHERE user_nick != 'NULL' AND car_number = '5';

--7.2

CREATE VIEW pilot_table AS
SELECT 
status_name,  
pilot.*
FROM championship_statuses
LEFT JOIN pilot
ON pilot.status_id = championship_statuses.id

--Выбираем победителей из представления.
SELECT * FROM pilot_table WHERE status_name = 'win';





--Function
--8.1

CREATE FUNCTION mighty_player()
RETURNS BIGINT AS
$$
SELECT atack
FROM weapon
GROUP BY id
ORDER BY atack DESC
LIMIT 1;
$$
LANGUAGE SQL;

--функция возвращает наибольшее значение убойки
SELECT mighty_player();


--8.2

CREATE FUNCTION attacker_by_id(id INTEGER)
RETURNS BIGINT AS
$$
SELECT atack
FROM weapon
WHERE id = id;
$$
LANGUAGE SQL;

--функция возвращает значение убойки по заданному id.
SELECT attacker_by_id(7);




--Create trigger
--9.1 
Триггер на соответствие id пилота к id пользовтеля.

CREATE OR REPLACE FUNCTION update_pilot_trigger()
RETURNS TRIGGER AS

$$
DECLARE pilot_user INT;
BEGIN
pilot_user := (SELECT id FROM pilot WHERE id = NEW.user_id);
IF NEW.user_id != pilot_user THEN
RAISE EXCEPTION 'User with ID: % has no pilot corresponds to ID: %', NEW.id, NEW.id;
END IF;
RETURN NEW;
END;
$$
LANGUAGE PLPGSQL;

CREATE TRIGGER check_before_update_pilot_trigger BEFORE UPDATE ON users
	FOR EACH ROW
EXECUTE FUNCTION update_pilot_trigger();

SELECT * FROM pilot WHERE id = 33;
UPDATE users SET user_id = 1 WHERE id = 33;
SELECT * FROM users WHERE id = 33;



DROP TRIGGER IF EXISTS update_pilot_trigger ON championship;




3
EXPLAIN ANALYZE WITH selected_car AS (
SELECT 
car.id AS car_ID,
body.body_name AS car_body,
pilot.name_id AS pilot,
	championship.championship_level_name AS Liga
	FROM car
	LEFT JOIN body
	ON  car.id=body.id
	INNER JOIN pilot
	ON car.id = pilot.id
	LEFT JOIN championship
	ON pilot.id = championship.id
	ORDER BY car.id )
	SELECT DISTINCT
	car_ID,
	car_body,
	pilot,
	Liga,
	DENSE_RANK () OVER (ORDER BY Liga DESC) AS Liga_rank
	FROM selected_car
	 ORDER BY Liga_rank;



