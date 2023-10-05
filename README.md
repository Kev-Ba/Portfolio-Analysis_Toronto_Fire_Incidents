##### Kevin Badali's Portfolio

---


## Toronto Fire Incidents
---

### Analysis Summary

Compile raw data on Toronto Fire Incidents, from the City of Toronto website, into a comprehensive  relational database. Then perform an exploratory analysis on the data, and offer any recommendations based on the findings. 

---


### Data Collection, Cleaning, & Database Creation

- Found and downloaded data on open.toronto.ca/ - public data hosted by the City of Toronto
- It contained data for 10 years worth of fire incidents (2011 - 2021)
>- The data was all in one single table, and was not fully optimized, with a total of 43 columns
>- i.e. A significant amount of repeat data, unfriendly data/time formats, and inconsistent nulls, blanks, and zero values (example below)

<img width="986" alt="Screenshot 2023-09-22 at 3 55 21 PM" src="https://github.com/Kev-Ba/Portfolio-Analysis_Toronto_Fire_Incidents/assets/146384860/92e57bd8-b54c-425f-bec5-2d660cf4c1f0">

- Reviewed data and designed a snowflake schema that could be used to further clean the data. Schema was designed using dbdiagram.io

<img width="805" alt="Screenshot 2023-09-22 at 4 07 34 PM" src="https://github.com/Kev-Ba/Portfolio-Analysis_Toronto_Fire_Incidents/assets/146384860/1c89d3d4-c539-4363-ac52-d94858eeb9d4">

- Using PowerQuery - the raw data table was split into topic dimension tables (i.e. fire, toronto_fire_services, etc.)
>- These tables were then further distilled into secondary dimension tables (i.e. method_fire_control, possible_cause, etc.)
- Primary keys & foreign keys were generated for each of these tables
- CSVs were exported
- Through dbdiagram.io, SQL code for the schema design was exported, and then executed in mySQL - creating the tables needed for the database
- The tables were then populated via the exported CSVs using a load data data infile statement












