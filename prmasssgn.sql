-- statement -1:- Write a SQL statement to create a table named countries including columns country_id, country_name and region_id and make sure that no countries except Italy, India and China will be entered in the table.


CREATE TABLE IF NOT EXISTS countries ( 
COUNTRY_ID varchar(2),
COUNTRY_NAME varchar(40)
CHECK(COUNTRY_NAME IN('Italy','India','China')) ,
REGION_ID decimal(10,0)
);

DESC countries;



-- statement-2:--Write a SQL statement to create the duplicate of the countries table named country_new with all structure and data.


CREATE TABLE IF NOT EXISTS country_new
AS SELECT * FROM countries;

DESC country_new;

