  
!--SELECT AVG(dep_delay) FROM flights WHERE origin='ATL';
!--SELECT AVG(distance) FROM flights WHERE unique_carrier='TW';
!--SELECT unique_carrier, COUNT(*) FROM flights WHERE origin_state_abr='LA' GROUP BY unique_carrier;
!--SELECT unique_carrier, COUNT(*) FROM flights WHERE origin_state_abr='LA' AND  dest_state_abr='CA' GROUP BY unique_carrier;
!--SELECT year_date, COUNT(*) FROM flights WHERE origin_state_abr='LA' AND dest='JFK' GROUP BY year_date;
!--SELECT year_date, SUM(distance) FROM flights WHERE unique_carrier='9E' GROUP BY year_date;
!--SELECT origin_state_abr, SUM(air_time) FROM flights WHERE dest='HPN' GROUP BY origin_state_abr;
!--SELECT unique_carrier, AVG(dep_delay) FROM flights WHERE year_date=2005 AND origin='PHX' GROUP BY unique_carrier;
!--SELECT dest_state_abr, COUNT(*) FROM flights WHERE distance>2500 GROUP BY dest_state_abr;
!--SELECT unique_carrier, COUNT(*) FROM flights WHERE air_time>1000 AND dep_delay>1500 GROUP BY unique_carrier;
!--SELECT year_date, SUM(arr_delay*dep_delay) FROM flights WHERE origin_state_abr = 'CA' AND dest_state_abr = 'HI' GROUP BY year_date;
!--SELECT dest_state_abr, SUM(taxi_out)-SUM(taxi_in) FROM flights WHERE unique_carrier = 'UA' AND origin = 'ATL' GROUP BY dest_state_abr;

SELECT dest_state_abr, COUNT(*) FROM flights WHERE 1500<=distance<=2500 GROUP BY dest_state_abr;
SELECT unique_carrier, COUNT(*) FROM flights WHERE   50<=air_time<=200  GROUP BY unique_carrier;
SELECT unique_carrier, COUNT(*) FROM flights WHERE 1000<=dep_delay<=1200 AND origin_state_abr='LA'  GROUP BY unique_carrier;   !--AND  dest_state_abr='CA'


SELECT unique_carrier, SUM(dep_delay) FROM flights WHERE 300<=distance<=1000 GROUP BY unique_carrier;
SELECT unique_carrier, SUM(dep_delay) FROM flights WHERE 1000<=distance<=1500 GROUP BY unique_carrier;
SELECT unique_carrier, SUM(dep_delay) FROM flights WHERE 1500<=distance<=2000 GROUP BY unique_carrier;


SELECT unique_carrier, AVG(dep_delay) FROM flights WHERE 300<=distance<=1000 GROUP BY unique_carrier;
SELECT unique_carrier, AVG(dep_delay) FROM flights WHERE 1000<=distance<=1500 GROUP BY unique_carrier;
SELECT unique_carrier, AVG(dep_delay) FROM flights WHERE 1500<=distance<=2000 GROUP BY unique_carrier;