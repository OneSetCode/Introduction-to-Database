SELECT origin_city,
  100 * ( (sum(CASE WHEN actual_time < 3 * 60 THEN 1 ELSE 0 END) + 0.0) / count( * ) ) AS percentage
FROM FLIGHTS
WHERE canceled = 0
GROUP BY origin_city
ORDER BY percentage,
          origin_city;

--returns 327 rows
--took 4 seconds
/*
Guam TT	0.000000000000
Pago Pago TT	0.000000000000
Aguadilla PR	28.897338403000
Anchorage AK	31.812080536900
San Juan PR	33.660531697300
Charlotte Amalie VI	39.558823529400
Ponce PR	40.983606557300
Fairbanks AK	50.116550116500
Kahului HI	53.514471352600
Honolulu HI	54.739028823600
San Francisco CA	55.828864537100
Los Angeles CA	56.080890822900
Seattle WA	57.609387792200
Long Beach CA	62.176439513900
New York NY	62.371834136700
Kona HI	63.160792951500
Las Vegas NV	64.920256372000
Christiansted VI	65.100671140900
Newark NJ	65.849971096900
Plattsburgh NY	66.666666666600
*/