-- DH requires conversion of heights from cm to in
-- Conversion factor taken from: https://nvlpubs.nist.gov/nistpubs/hb/2023/NIST.HB.44-2023-upd1.pdf

DROP TABLE IF EXISTS #anchor_date;

SELECT DISTINCT a.*
	,v.ht
	,v.wt
	,v.ENC_ID
INTO #anchor_date
FROM #anchor_study_cohort a
JOIN #cohort c ON c.patid = a.patid
JOIN (
	SELECT person_id
		,enc_id
		,max(ht)*0.3937008  ht
		,max(wt) wt
		,measure_date
	FROM @SCHEMA.@VITAL_SIGNS v
	GROUP BY person_id
		,enc_id
		,measure_date
	) v ON v.PERSON_ID = a.patid
	AND cast(v.measure_date AS DATE) = cast(a.measure_date AS DATE)
JOIN @SCHEMA.@ENCOUNTERS e ON v.ENC_ID = e.ENC_ID
WHERE e.ENCTYPE = 'AV'

UNION

SELECT DISTINCT linkid
	,a.patid
	,NULL AS first_session
	,v.measure_date
	,v.ht
	,v.wt
	,a.random_encounterid AS encounterid
FROM #anchor_comparison_cohort a
JOIN (
	SELECT person_id
		,enc_id
		,max(ht) ht
		,max(wt) wt
		,measure_date
	FROM @SCHEMA.@VITAL_SIGNS v
	GROUP BY person_id
		,enc_id
		,measure_date
	) v ON v.ENC_ID = a.random_encounterid;
