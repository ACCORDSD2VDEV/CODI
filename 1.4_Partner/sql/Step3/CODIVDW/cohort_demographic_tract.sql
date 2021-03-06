DROP TABLE IF EXISTS #cohort_demographic_tract;
SELECT DISTINCT a.*
	,CASE 
		WHEN acanthosis_nigricans IS NULL
			THEN 0
		ELSE acanthosis_nigricans
		END AS acanthosis_nigricans
	,CASE 
		WHEN adhd IS NULL
			THEN 0
		ELSE adhd
		END AS adhd
	,CASE 
		WHEN anxiety IS NULL
			THEN 0
		ELSE anxiety
		END AS anxiety
	,CASE 
		WHEN asthma IS NULL
			THEN 0
		ELSE asthma
		END AS asthma
	,CASE 
		WHEN autism IS NULL
			THEN 0
		ELSE autism
		END AS autism
	,CASE 
		WHEN depression IS NULL
			THEN 0
		ELSE depression
		END AS depression
	,CASE 
		WHEN diabetes IS NULL
			THEN 0
		ELSE diabetes
		END AS diabetes
	,CASE 
		WHEN eating_disorders IS NULL
			THEN 0
		ELSE eating_disorders
		END AS eating_disorders
	,CASE 
		WHEN hyperlipidemia IS NULL
			THEN 0
		ELSE hyperlipidemia
		END AS hyperlipidemia
	,CASE 
		WHEN hypertension IS NULL
			THEN 0
		ELSE hypertension
		END AS hypertension
	,CASE 
		WHEN NAFLD IS NULL
			THEN 0
		ELSE NAFLD
		END AS NAFLD
	,CASE 
		WHEN Obstructive_sleep_apnea IS NULL
			THEN 0
		ELSE Obstructive_sleep_apnea
		END AS Obstructive_sleep_apnea
	,CASE 
		WHEN PCOS IS NULL
			THEN 0
		ELSE PCOS
		END AS PCOS
INTO #cohort_demographic_tract
FROM #cohort_demographic_tract_prep a
LEFT JOIN #diagnosis_CC_ind_any b ON a.patid = b.patid;
