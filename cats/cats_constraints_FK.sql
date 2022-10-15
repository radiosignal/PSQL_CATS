

--Constraints FK Users
ALTER TABLE users
ADD CONSTRAINT users_user_id_fk
FOREIGN KEY (user_id)
REFERENCES pilot (id)
ON DELETE CASCADE;


  --Data correction for car
 UPDATE car SET wheels_id = 1 WHERE wheels_id =0
 UPDATE car SET tool_id = 1 WHERE tool_id =0
 
--Constraints FK car
ALTER TABLE car
ADD CONSTRAINT car_body_id_fk
FOREIGN KEY (body_id)
REFERENCES body (id)
ON DELETE CASCADE;

ALTER TABLE car
ADD CONSTRAINT car_weapon_id_fk
FOREIGN KEY (weapon_id)
REFERENCES weapon (id)
ON DELETE CASCADE;

ALTER TABLE car
ADD CONSTRAINT car_wheels_id_fk
FOREIGN KEY (wheels_id)
REFERENCES wheels (id)
ON DELETE CASCADE;

ALTER TABLE car
ADD CONSTRAINT car_tool_id_fk
FOREIGN KEY (tool_id)
REFERENCES tools (id)
ON DELETE CASCADE;

ALTER TABLE car
ADD CONSTRAINT car_upgrade_kit_id_fk
FOREIGN KEY (upgrade_kit_id)
REFERENCES upgrade_kit (id)
ON DELETE CASCADE;





--Add Constraint to Pilot
ALTER TABLE pilot
ADD CONSTRAINT pilot_id_fk
FOREIGN KEY (id)
REFERENCES car (id)
ON DELETE CASCADE;

ALTER TABLE pilot
ADD CONSTRAINT pilot_championship_id_fk
FOREIGN KEY (id)
REFERENCES  championship (id)
ON DELETE CASCADE;

ALTER TABLE pilot
ADD CONSTRAINT pilot_status_id_fk
FOREIGN KEY (status_id)
REFERENCES  championship_statuses(status_id)
ON DELETE CASCADE;



  
  --Add Constraint to Co_Pilot
ALTER TABLE co_pilot
ADD CONSTRAINT co_pilot_id_fk
FOREIGN KEY (id)
REFERENCES car (id)
ON DELETE CASCADE;


  
--Add cnstraint to Campionship  
ALTER TABLE championship
ADD CONSTRAINT championship_pilot_id_fk
FOREIGN KEY (id)
REFERENCES pilot (id)
ON DELETE CASCADE;

ALTER TABLE championship
DROP CONSTRAINT championship_pilot_id_fk ;
 
	

  
  --Add Constraint to championship_statuses
ALTER TABLE  championship_statuses
ADD CONSTRAINT  championship_statuses_id_fk
FOREIGN KEY (id)
REFERENCES pilot (status_id)
ON DELETE CASCADE;


