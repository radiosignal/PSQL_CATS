--CREATE Type ENUM 
CREATE TYPE championship_result AS ENUM ('win', 'loss');
 SELECT 'win'::CHAMPIONSHIP_RESULT
ALTER TABLE championship_statuses ADD column champ_result CHAMPIONSHIP_RESULT;

SELECT champ_result  FROM championship_statuses;
UPDATE championship_statuses SET champ_result = 'win' WHERE id =1;
UPDATE championship_statuses SET champ_result = 'loss' WHERE id =2;