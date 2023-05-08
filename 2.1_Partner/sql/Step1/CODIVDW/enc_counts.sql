SELECT * 
INTO
  #enc_counts
FROM (
  SELECT linkid
    ,patid
	,yr
	,COUNT(ENC_ID) AS encN
  FROM (
  	SELECT l.@LINKID_COLUMN_VALUE AS linkid, e.PERSON_ID as patid, e.ENC_ID,
  		CASE WHEN  ADATE >= '2016-6-1' AND ADATE < '2017-6-1' THEN SY0
			 WHEN ADATE >= '2017-6-1' AND ADATE < '2018-6-1' THEN SY1
  			 WHEN  ADATE >= '2018-6-1' AND ADATE < '2019-6-1' THEN SY2
  			 WHEN  ADATE >= '2019-6-1' AND ADATE < '2020-6-1' THEN SY3
			 WHEN  ADATE >= '2020-6-1' AND ADATE < '2021-6-1' THEN SY4
			 WHEN  ADATE >= '2021-6-1' AND ADATE < '2022-6-1' THEN SY5
			 WHEN  ADATE >= '2022-6-1' AND ADATE <= '2022-12-31' THEN SY6
  		END AS yr
  	FROM @SCHEMA.@ENCOUNTERS e
  	JOIN @SCHEMA.@LINK l on l.@PERSON_ID_PATID = e.PERSON_ID
  	WHERE e.ADATE >= '2017-6-1' AND e.ADATE < '2020-6-1'
  ) AS encounter_plus_year
  GROUP BY linkid, patid, yr
) a;
