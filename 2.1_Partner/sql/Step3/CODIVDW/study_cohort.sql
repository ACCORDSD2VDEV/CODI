--Per Ken, all the programs are in so any session record should be included to consideration in the query
DROP TABLE IF EXISTS #study_cohort;
SELECT 
	PERSON_ID AS patid, 
	birth_date, 
	CASE 
			WHEN DATEDIFF(day, DATEADD(year, DATEDIFF(YEAR, birth_date, '6/1/2017'), birth_date), '6/1/2017') < 0
				THEN DATEDIFF(YEAR, birth_date, '6/1/2017') - 1
			ELSE DATEDIFF(YEAR, birth_date, '6/1/2017')
			END AS study_age_yrs
INTO #study_cohort
 FROM @SCHEMA.@DEMOGRAPHICS
 WHERE PERSON_ID IN (
	SELECT 
		@PERSON_ID_PATID
	FROM 
		@SCHEMA.@SESSION s
		 WHERE session_date >= '2017-6-1' AND session_date < '2018-6-1'
		 --AND programid IN (SELECT programid from #study_programs)
	EXCEPT 
	SELECT @PERSON_ID_PATID
	FROM @SCHEMA.@SESSION s
		WHERE (session_date >= '1-Jan-2017' AND session_date < '1-Jun-2017')
	 		--OR programid IN ('WCV') -- This was a temporary fix for a specific data partner (not ideal). 
		--AND programid IN (SELECT programid from #study_programs)
 )
AND CASE 
			WHEN DATEDIFF(day, DATEADD(year, DATEDIFF(YEAR, birth_date, '6/1/2017'), birth_date), '6/1/2017') < 0
				THEN DATEDIFF(YEAR, birth_date, '6/1/2017') - 1
			ELSE DATEDIFF(YEAR, birth_date, '6/1/2017')
			END BETWEEN 2 AND 19;
