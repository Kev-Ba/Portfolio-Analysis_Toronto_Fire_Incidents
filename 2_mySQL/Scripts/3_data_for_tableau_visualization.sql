
-- Ensure no duplicate views are created

drop view if exists v_fire_analysis;

/* Created a view that amalgamated relevant data for analyzing the actual fires 

   TABLES used: Fire Detail Fact Table + Possible Cause + Ignition Source + Area of Origin + Location +
                Building Status + Property Use + Extent of Fire + Location */

create view v_fire_analysis as
select
	a.id, 
    a.date,
    c.pc_desc as "Possible Cause",
    d.ignition_des as "Ignition Source",
    e.aoo_desc as "Area of Origin",
    g.building_status_desc as "Building Type",
    h.property_use_desc as "Property Use",
    i.eof_desc as "Extent of Fire",
    j.incident_ward as "City Ward"
from incidents_fact_table a
left join fire_details b on a.fire_details_fk = b.id
left join possible_cause c on b.possible_cause_fk = c.id
left join ignition_source d on b.ignition_source_fk = d.id
left join area_of_origin e on b.area_of_origin_fk = e.id
left join location f on a.location_fk = f.id
left join building_status g on f.building_status_fk = g.id
left join property_use h on f.property_use_fk = h.id
left join extent_of_fire i on b.extent_of_fire_fk = i.id
left join location j on a.location_fk = j.id;

-- Ensure no duplicate views are created

drop view if exists v_fire_alarms;

/* Created a view that amalgamated relevant data for analyzing fire alarms related to the fire  

   TABLES used: Fire Alarm Fact Table + Fire Alarm System Presence + Fire Alarm System Operation + 
                Fire Alarm System Operation*/

create view v_fire_alarms as
select 
	b.id,
    c.fasp_desc,
    d.faso_desc,
    e.fasi_desc
from fire_alarms b
left join fire_alarms_system_presence c on b.fa_pesence_fk = c.id
left join fire_alarms_system_operation d on b.fa_operation_fk = d.id
left join fire_alarms_system_impact e on b.impact_evacuation_fk = e.id; 

-- Ensure no duplicate views are created

drop view if exists v_smoke_alarms;

/* Created a view that amalgamated relevant data for analyzing smoke alarms related to the fires 

   TABLES used: Smoke Alarm Fact Table + Smoke Alarm at Fire Origin + Smoke Alarm at Fire Origin Alarm Type +
                Smoke Alarm at Fire Origin Failure + Smoke Alarm Impact on Evacuation */

create view v_smoke_alarms as
select
	a.id,
    sa_desc,
    sa_type_desc,
    sa_failure_desc,
    sa_imp_evac_desc
from smoke_alarms a
left join smoke_alarm_at_fire_origin b on a.sa_fire_origin_fk = b.id
left join smoke_alarm_at_fire_origin_alarm_type c on a.sa_type_fk = c.id
left join smoke_alarm_at_fire_origin_failure d on a.sa_failure_fk = d.id
left join smoke_alarm_impact_evacuation e on a.sa_impact_evacuation_fk = e.id
order by a.id; 

-- Ensure no duplicate views are created

drop view if exists v_smoke_fire_alarm_analysis;

/* Created a view that amalgamated relevant data for analyzing both smoke & fire alarms 

   VIEWS used: Fire Alarms + Smoke Alarms */

create view v_smoke_fire_alarm_analysis as
select 
	a.id, 
    b.fasp_desc as "FA Presence",
    b.faso_desc as "FA Operation",
    c.sa_desc as "SA Description",
    c.sa_type_desc as "SA Type",
    c.sa_failure_desc as "SA Failure",
    c.sa_imp_evac_desc as "SA Evacuation Impact"
from incidents_fact_table a
left join v_fire_alarms b on a.fire_alarms_fk = b.id
left join v_smoke_alarms c on a.smoke_alarms_fk = c.id
order by a.id;


-- Ensure no duplicate views are created

drop view if exists v_tfs_analysis;

/* Created a view that amalgamated relevant data for analyzing Toronto Fire Services response to fires

   CALCULATIONS CREATED: How long it took TFS to arrive on scene from the time of the alarm +
                         How long it took TFS to get the fire under control from when they arrived on scene
                         
   TABLES used: Toronto Fire Services Fact Table + Incidents Fact Table + Location */

create view v_tfs_analysis as
select
	b.id as "id",
	b.date as "Date",
	responding_apparatus as "Number of Apparatuses",
    responding_personnel as "Number of Personnel",
    incident_ward as "City Ward",
    tfs_alarm_time as "TFS Alarm Time",
    tfs_arrival_time as "TFS Arrival Time",
    timediff(tfs_arrival_time, tfs_alarm_time) as "Time to Arrive",
    fire_controlled_time as "Fire Controlled Time",
    timediff(fire_controlled_time, tfs_arrival_time) as "Time to Fire Controlled"
from toronto_fire_services a
left join incidents_fact_table b on a.id = b.tfs_fk
left join location c on b.location_fk = c.id
order by id; 




    