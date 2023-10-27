-- DH requires conversion of heights from cm to in
-- Conversion factor taken from: https://nvlpubs.nist.gov/nistpubs/hb/2023/NIST.HB.44-2023-upd1.pdf

DROP TABLE IF EXISTS #anchor_study_cohort;

SELECT linkid
	,e.PERSON_ID AS patid
	,first_session_date
	,MAX(measure_date) AS measure_date
INTO #anchor_study_cohort
FROM @SCHEMA.@ENCOUNTERS e
JOIN (
	SELECT DISTINCT v1.PERSON_ID
		,v1.MEASURE_DATE
		,v1.ENC_ID
		,v1.HT * 0.3937008 as HT
		,v1.WT
	FROM (	
		SELECT person_id
			,enc_id
			,max(ht) ht
			,max(wt) wt
			,measure_date
		FROM @SCHEMA.@VITAL_SIGNS
		GROUP BY person_id
			,enc_id
			,measure_date
			) v1
	) v ON v.ENC_ID = e.ENC_ID
	and v.ht is not null 
	and v.wt is not null
JOIN (
	SELECT c.linkid
		,s.@PERSON_ID_PATID AS patid
		,MIN(session_date) AS first_session_date
	FROM @SCHEMA.@SESSION s
	JOIN #cohort c ON c.patid = s.@PERSON_ID_PATID
	WHERE session_date >= '2017-6-1' AND session_date < '2018-6-1' 
		AND cast(c.in_study_cohort as int) = 1
	GROUP BY c.linkid
		,s.@PERSON_ID_PATID
	) first_session ON first_session.patid = e.PERSON_ID
	AND measure_date < first_session_date
WHERE e.ENCTYPE = 'AV'
GROUP BY linkid
	,e.PERSON_ID
	,first_session_date;
