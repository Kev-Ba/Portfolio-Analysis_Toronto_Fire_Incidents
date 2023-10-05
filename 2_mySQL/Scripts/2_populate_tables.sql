/* The CSVs could not originally be imported due to Foreign Key Checks from the table creation 
   Used the below code to get around this */

SET FOREIGN_KEY_CHECKS=0;

-- Data Infile import of CSVs 

LOAD DATA INFILE 'd2 - area_of_origin.csv' INTO TABLE area_of_origin
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'd2 - building_status.csv' INTO TABLE building_status
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'd2 - business_impact.csv' INTO TABLE business_impact
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'd2 - extent_of_fire.csv' INTO TABLE extent_of_fire
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'd2 - final_incident_type.csv' INTO TABLE final_incident_type
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'd2 - fire_alarm_system_impact.csv' INTO TABLE fire_alarms_system_impact
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'd2 - fa_system_operation.csv' INTO TABLE fire_alarms_system_operation
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'd2 - fa_system_presence.csv' INTO TABLE fire_alarms_system_presence
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'd2 - ignition_source.csv' INTO TABLE ignition_source
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'd2 - initial_CAD_event.csv' INTO TABLE initial_cad_event
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'd2 - material_first_ignited.csv' INTO TABLE material_first_ignited
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'd2 - method_fire_control.csv' INTO TABLE method_fire_control
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'd2 - possible_cause.csv' INTO TABLE possible_cause
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'd2 - property_use.csv' INTO TABLE property_use
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'd2 - sa_fire_origin.csv' INTO TABLE smoke_alarm_at_fire_origin
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'd2 - sa_type.csv' INTO TABLE smoke_alarm_at_fire_origin_alarm_type
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'd2 - sa_failure.csv' INTO TABLE smoke_alarm_at_fire_origin_failure
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'd2 - sa_impact_evacuation.csv' INTO TABLE smoke_alarm_impact_evacuation
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'd2 - smoke_spread.csv' INTO TABLE smoke_spread
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'd2 - sprinkler_system_operation.csv' INTO TABLE sprinkler_system_operation
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'd2 - sprinkler_system_presence.csv' INTO TABLE sprinkler_system_presence
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'd2 - status_fire_on_arrival.csv' INTO TABLE status_fire_on_arrival
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'd1 - civilian_impact.csv' INTO TABLE civilian_impact
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'd1 - damages.csv' INTO TABLE damages
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'd1 - fire_alarms.csv' INTO TABLE fire_alarms
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'd1 - fire_details.csv' INTO TABLE fire_details
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'd1 - location.csv' INTO TABLE location
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'd1 - smoke_alarms.csv' INTO TABLE smoke_alarms
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'd1 - sprinkler_system.csv' INTO TABLE sprinkler_systems
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'd1 - toronto_fire_services.csv' INTO TABLE toronto_fire_services
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'Fact Table.csv' INTO TABLE incidents_fact_table
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

-- Reset Foreign Key Checks

SET FOREIGN_KEY_CHECKS=1;









