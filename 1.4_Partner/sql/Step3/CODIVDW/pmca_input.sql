DROP TABLE IF EXISTS #pmca_input
SELECT d.PERSON_ID AS patid
	,COUNT(DISTINCT body_system) AS body_system
	,MAX(severity) AS severity
INTO #pmca_input
FROM @SCHEMA.@DIAGNOSES d
JOIN (
	SELECT icd10 AS dx
		,'10' AS dx_type
		,body_system
		,CASE 
			WHEN progressive IN (
					'Yes'
					,'yes'
					)
				THEN 2
			ELSE 1
			END AS severity
	FROM #pmca
	
	UNION ALL
	
	SELECT referencedComponentId
		,'SM'
		,body_system
		,CASE 
			WHEN progressive IN (
					'Yes'
					,'yes'
					)
				THEN 2
			ELSE 1
			END AS severity
	FROM #pmca p
	JOIN #snomed2icd s ON p.icd10 = s.mapTarget
	) pmca_codes ON pmca_codes.dx = d.dx
	AND pmca_codes.dx_type = d.DX_CODETYPE
GROUP BY d.PERSON_ID;

