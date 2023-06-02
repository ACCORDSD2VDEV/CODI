SELECT * 
INTO
  #enc_counts
FROM (
  SELECT linkid
    ,patid
	,yr
	,COUNT(ENC_ID) AS encN
  FROM (
  	SELECT l.@LINKID_COLUMN_VALUE AS linkid
	  	, e.PERSON_ID as patid
	  	, e.ENC_ID
	  	, CASE WHEN  e.ADATE >= '2016-6-1' AND e.ADATE < '2017-6-1' THEN 'SY0'
			 WHEN e.ADATE >= '2017-6-1' AND e.ADATE < '2018-6-1' THEN 'SY1'
  			 WHEN  e.ADATE >= '2018-6-1' AND e.ADATE < '2019-6-1' THEN 'SY2'
  			 WHEN  e.ADATE >= '2019-6-1' AND e.ADATE < '2020-6-1' THEN 'SY3'
	  		 WHEN  e.ADATE >= '2020-6-1' AND e.ADATE < '2021-6-1' THEN 'SY4'
	 		 WHEN  e.ADATE >= '2021-6-1' AND e.ADATE < '2022-6-1' THEN 'SY5'
	  		 WHEN  e.ADATE >= '2022-6-1' AND e.ADATE < '2023-1-1' THEN 'SY6'
	  		 ELSE 'IGNORE'
  		END AS yr
  	FROM @SCHEMA.@ENCOUNTERS e
  	JOIN @SCHEMA.@LINK l on l.@PERSON_ID_PATID = e.PERSON_ID
  	WHERE e.ADATE >= '2017-6-1' AND e.ADATE < '2023-1-1'
  ) AS encounter_plus_year
  GROUP BY linkid, patid, yr
) a;
