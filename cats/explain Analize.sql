-- 
EXPLAIN ANALYZE SELECT id AS car_id,
(SELECT weapon_name  FROM weapon WHERE weapon.id = car.id ),
(SELECT atack AS car_force FROM weapon WHERE weapon.id = car.id ),
(SELECT  health AS car_health FROM body WHERE body.id = car.id )
FROM car GROUP BY car_id ORDER BY car_force DESC LIMIT 10;

--"QUERY PLAN" Sequence scan
-- "Limit  (cost=230.41..298.04 rows=10 width=90) (actual time=1.050..1.205 rows=10 loops=1)"
-- "  ->  Result  (cost=230.41..906.66 rows=100 width=90) (actual time=1.049..1.203 rows=10 loops=1)"
-- "        ->  Sort  (cost=230.41..230.66 rows=100 width=8) (actual time=1.024..1.025 rows=10 loops=1)"
-- "              Sort Key: ((SubPlan 2)) DESC"
-- "              Sort Method: top-N heapsort  Memory: 25kB"
-- "              ->  HashAggregate  (cost=2.25..228.25 rows=100 width=8) (actual time=0.069..0.998 rows=100 loops=1)"
-- "                    Group Key: car.id"
-- "                    Batches: 1  Memory Usage: 24kB"
-- "                    ->  Seq Scan on car  (cost=0.00..2.00 rows=100 width=4) (actual time=0.010..0.016 rows=100 loops=1)"
-- "                    SubPlan 2"
-- "                      ->  Seq Scan on weapon weapon_1  (cost=0.00..2.25 rows=1 width=4) (actual time=0.005..0.008 rows=1 loops=100)"
-- "                            Filter: (id = car.id)"
-- "                            Rows Removed by Filter: 99"
-- "        SubPlan 1"
-- "          ->  Seq Scan on weapon  (cost=0.00..2.25 rows=1 width=7) (actual time=0.005..0.008 rows=1 loops=10)"
-- "                Filter: (id = car.id)"
-- "                Rows Removed by Filter: 99"
-- "        SubPlan 3"
-- "          ->  Seq Scan on body  (cost=0.00..2.25 rows=1 width=4) (actual time=0.005..0.008 rows=1 loops=10)"
-- "                Filter: (id = car.id)"
-- "                Rows Removed by Filter: 99"
-- "Planning Time: 0.172 ms"
- "Execution Time: 1.238 ms"Sequence scan

--  QUERY PLAN Index scan

-- -----------------------------------------------------------------------------------------------------------------------------------------------------
-- ----
--  Limit  (cost=832.05..1076.98 rows=10 width=90) (actual time=0.291..0.321 rows=10 loops=1)
--    ->  Result  (cost=832.05..3281.30 rows=100 width=90) (actual time=0.290..0.319 rows=10 loops=1)
--          ->  Sort  (cost=832.05..832.30 rows=100 width=8) (actual time=0.253..0.255 rows=10 loops=1)
--                Sort Key: ((SubPlan 2)) DESC
--                Sort Method: top-N heapsort  Memory: 25kB
--                ->  Group  (cost=0.14..829.89 rows=100 width=8) (actual time=0.070..0.232 rows=100 loops=1)
--                      Group Key: car.id
--                      ->  Index Only Scan using car_pkey on car  (cost=0.14..13.64 rows=100 width=4) (actual time=0.055..0.077 rows=100 loops=1)
--                            Heap Fetches: 100
--                      SubPlan 2
--                        ->  Index Scan using weapon_pkey on weapon weapon_1  (cost=0.14..8.16 rows=1 width=4) (actual time=0.001..0.001 rows=1 loops=1
-- 00)
--                              Index Cond: (id = car.id)
--          SubPlan 1
--            ->  Index Scan using weapon_pkey on weapon  (cost=0.14..8.16 rows=1 width=7) (actual time=0.002..0.002 rows=1 loops=10)
--                  Index Cond: (id = car.id)
--          SubPlan 3
--            ->  Index Scan using body_pkey on body  (cost=0.14..8.16 rows=1 width=4) (actual time=0.003..0.003 rows=1 loops=10)
--                  Index Cond: (id = car.id)
--  Planning Time: 0.245 ms
 Execution Time: 0.355 ms Index scan

-- (20 rows)

EXPLAIN ANALYZE SELECT
car.id AS car_id,
weapon.weapon_name,
weapon.atack AS car_force,
body.health AS car_health
FROM car
LEFT JOIN weapon
ON  weapon.id = car.id
INNER JOIN body
ON body.id = car.id
ORDER BY car_force DESC LIMIT 10;

-- "QUERY PLAN"
-- "Limit  (cost=11.21..11.23 rows=10 width=19) (actual time=0.299..0.303 rows=10 loops=1)"
-- "  ->  Sort  (cost=11.21..11.46 rows=100 width=19) (actual time=0.298..0.300 rows=10 loops=1)"
-- "        Sort Key: weapon.atack DESC"
-- "        Sort Method: top-N heapsort  Memory: 26kB"
-- "        ->  Hash Join  (cost=6.50..9.05 rows=100 width=19) (actual time=0.199..0.262 rows=100 loops=1)"
-- "              Hash Cond: (car.id = body.id)"
-- "              ->  Hash Left Join  (cost=3.25..5.52 rows=100 width=15) (actual time=0.057..0.096 rows=100 loops=1)"
-- "                    Hash Cond: (car.id = weapon.id)"
-- "                    ->  Seq Scan on car  (cost=0.00..2.00 rows=100 width=4) (actual time=0.008..0.018 rows=100 loops=1)"
-- "                    ->  Hash  (cost=2.00..2.00 rows=100 width=15) (actual time=0.042..0.043 rows=100 loops=1)"
-- "                          Buckets: 1024  Batches: 1  Memory Usage: 13kB"
-- "                          ->  Seq Scan on weapon  (cost=0.00..2.00 rows=100 width=15) (actual time=0.005..0.019 rows=100 loops=1)"
-- "              ->  Hash  (cost=2.00..2.00 rows=100 width=8) (actual time=0.132..0.132 rows=100 loops=1)"
-- "                    Buckets: 1024  Batches: 1  Memory Usage: 12kB"
-- "                    ->  Seq Scan on body  (cost=0.00..2.00 rows=100 width=8) (actual time=0.049..0.085 rows=100 loops=1)"
-- "Planning Time: 0.642 ms"
- "Execution Time: 0.353 ms" Sequence scan
--                                                                    QUERY PLAN Index scan
-- --------------------------------------------------------------------------------------------------------------------------------------------------
--  Limit  (cost=46.09..46.11 rows=10 width=19) (actual time=0.407..0.411 rows=10 loops=1)
--    ->  Sort  (cost=46.09..46.34 rows=100 width=19) (actual time=0.406..0.408 rows=10 loops=1)
--          Sort Key: weapon.atack DESC
--          Sort Method: top-N heapsort  Memory: 26kB
--          ->  Merge Join  (cost=0.43..43.93 rows=100 width=19) (actual time=0.030..0.346 rows=100 loops=1)
--                Merge Cond: (car.id = body.id)
--                ->  Merge Left Join  (cost=0.29..28.79 rows=100 width=15) (actual time=0.023..0.194 rows=100 loops=1)
--                      Merge Cond: (car.id = weapon.id)
--                      ->  Index Only Scan using car_pkey on car  (cost=0.14..13.64 rows=100 width=4) (actual time=0.014..0.066 rows=100 loops=1)
--                            Heap Fetches: 100
--                      ->  Index Scan using weapon_pkey on weapon  (cost=0.14..13.64 rows=100 width=15) (actual time=0.005..0.040 rows=100 loops=1)
--                ->  Index Scan using body_pkey on body  (cost=0.14..13.64 rows=100 width=8) (actual time=0.005..0.040 rows=100 loops=1)
--  Planning Time: 0.449 ms
 Execution Time: 0.462 ms Index scan

-- (14 rows)

Применение JOIN существенно улучшили время обработки запроса Execution Time: 0.353 ms против Execution Time: 1.238 ms
При оследовательном сканировании результат обработки запросов лучше чем при поиндексном