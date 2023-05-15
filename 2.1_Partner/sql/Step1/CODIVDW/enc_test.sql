DROP TABLE IF EXISTS #ec_test;

SELECT *
INTO #ec_test
FROM (
	SELECT *
	FROM @SCHEMA.@CENSUS_LOCATION cl
	INNER JOIN #enc_counts e ON e.patid = cl.PERSON_ID
	) a;
