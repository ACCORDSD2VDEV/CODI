DROP TABLE IF EXISTS #race_condition_inputs
SELECT l.@LINKID_COLUMN_VALUE as linkid
	,category
	,count
	,early_admit_date
INTO #race_condition_inputs
FROM #race_condition_inputs_1 a
LEFT JOIN @SCHEMA.@LINK l ON a.patid = l.@PERSON_ID_PATID;


