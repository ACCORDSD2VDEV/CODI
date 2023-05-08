DROP TABLE IF EXISTS #cohort_demographic_age;
SELECT *
INTO #cohort_demographic_age
FROM (
	SELECT *
		,CASE 
			WHEN DATEDIFF(day, DATEADD(year, DATEDIFF(YEAR, birth_date, '6/1/2016'), birth_date), '6/1/2016') < 0
				THEN DATEDIFF(YEAR, birth_date, '6/1/2016') - 1
			ELSE DATEDIFF(YEAR, birth_date, '6/1/2016')
			END AS study_age_yrs_SY0
		,CASE 
			WHEN DATEDIFF(day, DATEADD(year, DATEDIFF(YEAR, birth_date, '6/1/2017'), birth_date), '6/1/2017') < 0
				THEN DATEDIFF(YEAR, birth_date, '6/1/2017') - 1
			ELSE DATEDIFF(YEAR, birth_date, '6/1/2017')
			END AS study_age_yrs_SY1
		,CASE 
			WHEN DATEDIFF(day, DATEADD(year, DATEDIFF(YEAR, birth_date, '6/1/2018'), birth_date), '6/1/2018') < 0
				THEN DATEDIFF(YEAR, birth_date, '6/1/2018') - 1
			ELSE DATEDIFF(YEAR, birth_date, '6/1/2018')
			END AS study_age_yrs_SY2
		,CASE 
			WHEN DATEDIFF(day, DATEADD(year, DATEDIFF(YEAR, birth_date, '6/1/2019'), birth_date), '6/1/2019') < 0
				THEN DATEDIFF(YEAR, birth_date, '6/1/2019') - 1
			ELSE DATEDIFF(YEAR, birth_date, '6/1/2019')
			END AS study_age_yrs_SY3
		,CASE 
			WHEN DATEDIFF(day, DATEADD(year, DATEDIFF(YEAR, birth_date, '6/1/2020'), birth_date), '6/1/2020') < 0
				THEN DATEDIFF(YEAR, birth_date, '6/1/2020') - 1
			ELSE DATEDIFF(YEAR, birth_date, '6/1/2020')
			END AS study_age_yrs_SY4	
		,CASE 
			WHEN DATEDIFF(day, DATEADD(year, DATEDIFF(YEAR, birth_date, '6/1/2021'), birth_date), '6/1/2021') < 0
				THEN DATEDIFF(YEAR, birth_date, '6/1/2021') - 1
			ELSE DATEDIFF(YEAR, birth_date, '6/1/2021')
			END AS study_age_yrs_SY5
		,CASE 
			WHEN DATEDIFF(day, DATEADD(year, DATEDIFF(YEAR, birth_date, '6/1/2022'), birth_date), '6/1/2022') < 0
				THEN DATEDIFF(YEAR, birth_date, '6/1/2022') - 1
			ELSE DATEDIFF(YEAR, birth_date, '6/1/2022')
			END AS study_age_yrs_SY6
	FROM #cohort_demographic
) a;
