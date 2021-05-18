DROP TABLE IF EXISTS #cohort_demographic_age_filter;
SELECT *
INTO #cohort_demographic_age_filter 
FROM (
  SELECT 
  	cid,
  	person_id,
  	encN,
  	birth_date,
  	sex,
  	race,
  	hispanic,
  	yr,
  	loc_start --,
  	--study_age_yrs_2017,
  	--study_age_yrs_2018,
  	--study_age_yrs_2019
  FROM 
  	#cohort_demographic_age 
  WHERE 
  	(yr = 2017 AND study_age_yrs_2017 BETWEEN 2 AND 19) OR
  	(yr = 2018 AND study_age_yrs_2018 BETWEEN 2 AND 19) OR
  	(yr = 2019 AND study_age_yrs_2019 BETWEEN 2 AND 19)
) a;