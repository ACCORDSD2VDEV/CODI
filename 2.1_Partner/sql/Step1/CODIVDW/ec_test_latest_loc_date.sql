DROP TABLE IF EXISTS #ec_test_latest_loc_date;

SELECT *
INTO #ec_test_latest_loc_date
FROM (
	SELECT patid
		,CASE WHEN  yr >= '2016-6-1' AND yr < '2017-6-1' THEN 'SY0'
			 WHEN yr >= '2017-6-1' AND yr < '2018-6-1' THEN 'SY1'
  			 WHEN  yr >= '2018-6-1' AND yr < '2019-6-1' THEN 'SY2'
  			 WHEN  yr >= '2019-6-1' AND yr < '2020-6-1' THEN 'SY3'
	  		 WHEN  yr >= '2020-6-1' AND yr < '2021-6-1' THEN 'SY4'
	 		 WHEN  yr >= '2021-6-1' AND yr < '2022-6-1' THEN 'SY5'
	  		 WHEN  yr >= '2022-6-1' AND yr < '2023-1-1' THEN 'SY6'
	  		 ELSE 'IGNORE'
  		END AS yr
		,MAX(CONVERT(DATE, loc_start)) AS latest_loc_date
	FROM #ec_test
	--WHERE loc_start <= CONVERT(DATETIME, '12-31-' + CAST(yr AS VARCHAR(4)))
	GROUP BY patid
		,yr
	) a;
