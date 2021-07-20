-- Map to SPECIALTY and PROVIDER_TYPE for now
DROP TABLE IF EXISTS #DIET_NUTR_ENC;
WITH CTE_DIET_NUTR_ENC
AS (
	SELECT te.linkid
		,te.admit_date
		,te.enc_type
		,te.SPECIALTY
		,te.SPECIALTY2
		,te.SPECIALTY3
		,te.SPECIALTY4
		,te.PROVIDER_TYPE
		,YEAR(te.admit_date) AS yr
	FROM #TYPE_ENC_OUT te
	WHERE SPECIALTY IN ('NUT')
		OR SPECIALTY2 IN ('NUT')
		OR SPECIALTY3 IN ('NUT')
		OR SPECIALTY4 IN ('NUT')
		OR PROVIDER_TYPE IN ('020','021')
	)
SELECT d.linkid
	,d.yr
	,COUNT(d.linkid) AS enc_count
INTO #DIET_NUTR_ENC
FROM CTE_DIET_NUTR_ENC d
GROUP BY linkid
	,yr;