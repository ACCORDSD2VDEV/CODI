SELECT * 
INTO
  #enc_counts
FROM (
  SELECT linkid
    ,patid
	,yr
	,null AS encN
  FROM (
  	SELECT l.@LINKID_COLUMN_VALUE AS linkid, e.PERSON_ID as patid, e.SESSIONID,
  		CASE WHEN  SESSION_DATE >= '2016-6-1' AND SESSION_DATE < '2017-6-1' THEN 'SY0'
			 WHEN SESSION_DATE >= '2017-6-1' AND SESSION_DATE < '2018-6-1' THEN 'SY1'
  			 WHEN  SESSION_DATE >= '2018-6-1' AND SESSION_DATE < '2019-6-1' THEN 'SY2'
  			 WHEN  SESSION_DATE >= '2019-6-1' AND SESSION_DATE < '2020-6-1' THEN 'SY3'
	  		 WHEN  SESSION_DATE >= '2020-6-1' AND SESSION_DATE < '2021-6-1' THEN 'SY4'
	 		 WHEN  SESSION_DATE >= '2021-6-1' AND SESSION_DATE < '2022-6-1' THEN 'SY5'
	  		 WHEN  SESSION_DATE >= '2022-6-1' AND SESSION_DATE < '2023-1-1' THEN 'SY6'
	  		 ELSE 'IGNORE'
	END AS yr
  	FROM @SCHEMA.@SESSION e
  	JOIN @SCHEMA.@LINK l on l.@PERSON_ID_PATID = e.PERSON_ID
  	WHERE e.SESSION_DATE >= '2017-1-1' AND e.SESSION_DATE < '2023-1-1'
  ) AS encounter_plus_year
  GROUP BY linkid, patid, yr
) a;
