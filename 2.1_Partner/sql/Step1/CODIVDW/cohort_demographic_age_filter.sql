DROP TABLE IF EXISTS #cohort_demographic_age_filter;
SELECT *
INTO #cohort_demographic_age_filter 
FROM (
  SELECT 
  	linkid,
  	patid,
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
  	(yr = 'SY1' AND study_age_yrs_2017 BETWEEN 2 AND 19) OR
  	(yr = 'SY2' AND study_age_yrs_2018 BETWEEN 2 AND 19) OR
  	(yr = 'SY3' AND study_age_yrs_2019 BETWEEN 2 AND 19) OR 
    (yr = 'SY4' AND study_age_yrs_2019 BETWEEN 2 AND 19) OR 
    (yr = 'SY5' AND study_age_yrs_2019 BETWEEN 2 AND 19) OR 
    (yr = 'SY6' AND study_age_yrs_2019 BETWEEN 2 AND 19) 
) a;
