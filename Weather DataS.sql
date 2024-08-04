create database Weather;
use Weather;
create table weather_table (
Date_Time varchar(255),
Temp_C decimal(11, 2),
Dew_Point_Temp_C decimal(11, 2),
Rel_Hum_percentage int,
Wind_Speed_km_per_h int,
Visibility_km decimal(11, 2),
Press_kPa decimal(11, 2),
Weather varchar(255)
);

ALTER TABLE weather_table
RENAME COLUMN Weather to Weather_Condition;

SELECT * FROM weather_table WHERE Weather_Condition = 'clear';

SELECT COUNT(Wind_Speed_km_per_h) FROM  weather_table WHERE Wind_Speed_km_per_h = 4;

SELECT AVG(Visibility_km) AS Mean_Visibility FROM  weather_table ;