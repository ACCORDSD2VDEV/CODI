DROP TABLE IF EXISTS #comorb_codes;
CREATE TABLE #comorb_codes (
	condition varchar(255), -- comorb condition
	coding_system varchar(255), -- icd9 or icd10
	code varchar(10)
);
-- EXECUTE dbo.CreateTempTable '#comorb_codes', @comob_path 
INSERT INTO #comorb_codes VALUES ('hypertension', 'ICD9', '362.11'),
('hypertension', 'ICD9', '401.0'),
('hypertension', 'ICD9', '401.1'),
('hypertension', 'ICD9', '401.9'),
('hypertension', 'ICD9', '402.00'),
('hypertension', 'ICD9', '402.01'),
('hypertension', 'ICD9', '402.10'),
('hypertension', 'ICD9', '402.11'),
('hypertension', 'ICD9', '402.90'),
('hypertension', 'ICD9', '402.91'),
('hypertension', 'ICD9', '403.00'),
('hypertension', 'ICD9', '403.01'),
('hypertension', 'ICD9', '403.10'),
('hypertension', 'ICD9', '403.11'),
('hypertension', 'ICD9', '403.90'),
('hypertension', 'ICD9', '403.91'),
('hypertension', 'ICD9', '404.00'),
('hypertension', 'ICD9', '404.01'),
('hypertension', 'ICD9', '404.02'),
('hypertension', 'ICD9', '404.03'),
('hypertension', 'ICD9', '404.1'),
('hypertension', 'ICD9', '404.11'),
('hypertension', 'ICD9', '404.12'),
('hypertension', 'ICD9', '404.13'),
('hypertension', 'ICD9', '404.9'),
('hypertension', 'ICD9', '404.91'),
('hypertension', 'ICD9', '404.92'),
('hypertension', 'ICD9', '404.93'),
('hypertension', 'ICD9', '405.01'),
('hypertension', 'ICD9', '405.09'),
('hypertension', 'ICD9', '405.11'),
('hypertension', 'ICD9', '405.19'),
('hypertension', 'ICD9', '405.91'),
('hypertension', 'ICD9', '405.99'),
('hypertension', 'ICD9', '437.2'),
('hypertension', 'ICD10', 'H35.031'),
('hypertension', 'ICD10', 'H35.032'),
('hypertension', 'ICD10', 'H35.033'),
('hypertension', 'ICD10', 'H35.039'),
('hypertension', 'ICD10', 'I10'),
('hypertension', 'ICD10', 'I11.0'),
('hypertension', 'ICD10', 'I11.9'),
('hypertension', 'ICD10', 'I12.0'),
('hypertension', 'ICD10', 'I12.9'),
('hypertension', 'ICD10', 'I13.0'),
('hypertension', 'ICD10', 'I13.10'),
('hypertension', 'ICD10', 'I13.11'),
('hypertension', 'ICD10', 'I13.2'),
('hypertension', 'ICD10', 'I15.0'),
('hypertension', 'ICD10', 'I15.1'),
('hypertension', 'ICD10', 'I15.2'),
('hypertension', 'ICD10', 'I15.8'),
('hypertension', 'ICD10', 'I15.9'),
('hypertension', 'ICD10', 'I67.4'),
('hypertension', 'ICD10', 'N26.2'),
('diabetes', 'ICD9', '249.00'),
('diabetes', 'ICD9', '249.01'),
('diabetes', 'ICD9', '249.10'),
('diabetes', 'ICD9', '249.11'),
('diabetes', 'ICD9', '249.20'),
('diabetes', 'ICD9', '249.21'),
('diabetes', 'ICD9', '249.30'),
('diabetes', 'ICD9', '249.31'),
('diabetes', 'ICD9', '249.40'),
('diabetes', 'ICD9', '249.41'),
('diabetes', 'ICD9', '249.50'),
('diabetes', 'ICD9', '249.51'),
('diabetes', 'ICD9', '249.60'),
('diabetes', 'ICD9', '249.61'),
('diabetes', 'ICD9', '249.70'),
('diabetes', 'ICD9', '249.71'),
('diabetes', 'ICD9', '249.80'),
('diabetes', 'ICD9', '249.81'),
('diabetes', 'ICD9', '249.90'),
('diabetes', 'ICD9', '249.91'),
('diabetes', 'ICD9', '250.00'),
('diabetes', 'ICD9', '250.01'),
('diabetes', 'ICD9', '250.02'),
('diabetes', 'ICD9', '250.03'),
('diabetes', 'ICD9', '250.10'),
('diabetes', 'ICD9', '250.11'),
('diabetes', 'ICD9', '250.12'),
('diabetes', 'ICD9', '250.13'),
('diabetes', 'ICD9', '250.20'),
('diabetes', 'ICD9', '250.21'),
('diabetes', 'ICD9', '250.22'),
('diabetes', 'ICD9', '250.23'),
('diabetes', 'ICD9', '250.30'),
('diabetes', 'ICD9', '250.31'),
('diabetes', 'ICD9', '250.32'),
('diabetes', 'ICD9', '250.33'),
('diabetes', 'ICD9', '250.40'),
('diabetes', 'ICD9', '250.41'),
('diabetes', 'ICD9', '250.42'),
('diabetes', 'ICD9', '250.43'),
('diabetes', 'ICD9', '250.50'),
('diabetes', 'ICD9', '250.51'),
('diabetes', 'ICD9', '250.52'),
('diabetes', 'ICD9', '250.53'),
('diabetes', 'ICD9', '250.60'),
('diabetes', 'ICD9', '250.61'),
('diabetes', 'ICD9', '250.62'),
('diabetes', 'ICD9', '250.63'),
('diabetes', 'ICD9', '250.70'),
('diabetes', 'ICD9', '250.71'),
('diabetes', 'ICD9', '250.72'),
('diabetes', 'ICD9', '250.73'),
('diabetes', 'ICD9', '250.80'),
('diabetes', 'ICD9', '250.81'),
('diabetes', 'ICD9', '250.82'),
('diabetes', 'ICD9', '250.83'),
('diabetes', 'ICD9', '250.90'),
('diabetes', 'ICD9', '250.91'),
('diabetes', 'ICD9', '250.92'),
('diabetes', 'ICD9', '250.93'),
('diabetes', 'ICD9', '357.2'),
('diabetes', 'ICD9', '362.01'),
('diabetes', 'ICD9', '362.02'),
('diabetes', 'ICD9', '362.03'),
('diabetes', 'ICD9', '362.04'),
('diabetes', 'ICD9', '362.05'),
('diabetes', 'ICD9', '362.06'),
('diabetes', 'ICD9', '366.41'),
('diabetes', 'ICD10', 'E08.00'),
('diabetes', 'ICD10', 'E08.01'),
('diabetes', 'ICD10', 'E08.10'),
('diabetes', 'ICD10', 'E08.11'),
('diabetes', 'ICD10', 'E08.21'),
('diabetes', 'ICD10', 'E08.22'),
('diabetes', 'ICD10', 'E08.29'),
('diabetes', 'ICD10', 'E08.311'),
('diabetes', 'ICD10', 'E08.319'),
('diabetes', 'ICD10', 'E08.321'),
('diabetes', 'ICD10', 'E08.3211'),
('diabetes', 'ICD10', 'E08.3212'),
('diabetes', 'ICD10', 'E08.3213'),
('diabetes', 'ICD10', 'E08.3219'),
('diabetes', 'ICD10', 'E08.329'),
('diabetes', 'ICD10', 'E08.3291'),
('diabetes', 'ICD10', 'E08.3292'),
('diabetes', 'ICD10', 'E08.3293'),
('diabetes', 'ICD10', 'E08.3299'),
('diabetes', 'ICD10', 'E08.331'),
('diabetes', 'ICD10', 'E08.3311'),
('diabetes', 'ICD10', 'E08.3312'),
('diabetes', 'ICD10', 'E08.3313'),
('diabetes', 'ICD10', 'E08.3319'),
('diabetes', 'ICD10', 'E08.339'),
('diabetes', 'ICD10', 'E08.3391'),
('diabetes', 'ICD10', 'E08.3392'),
('diabetes', 'ICD10', 'E08.3393'),
('diabetes', 'ICD10', 'E08.3399'),
('diabetes', 'ICD10', 'E08.341'),
('diabetes', 'ICD10', 'E08.3411'),
('diabetes', 'ICD10', 'E08.3412'),
('diabetes', 'ICD10', 'E08.3413'),
('diabetes', 'ICD10', 'E08.3419'),
('diabetes', 'ICD10', 'E08.349'),
('diabetes', 'ICD10', 'E08.3491'),
('diabetes', 'ICD10', 'E08.3492'),
('diabetes', 'ICD10', 'E08.3493'),
('diabetes', 'ICD10', 'E08.3499'),
('diabetes', 'ICD10', 'E08.351'),
('diabetes', 'ICD10', 'E08.3511'),
('diabetes', 'ICD10', 'E08.3512'),
('diabetes', 'ICD10', 'E08.3513'),
('diabetes', 'ICD10', 'E08.3519'),
('diabetes', 'ICD10', 'E08.3521'),
('diabetes', 'ICD10', 'E08.3522'),
('diabetes', 'ICD10', 'E08.3523'),
('diabetes', 'ICD10', 'E08.3529'),
('diabetes', 'ICD10', 'E08.3531'),
('diabetes', 'ICD10', 'E08.3532'),
('diabetes', 'ICD10', 'E08.3533'),
('diabetes', 'ICD10', 'E08.3539'),
('diabetes', 'ICD10', 'E08.3541'),
('diabetes', 'ICD10', 'E08.3542'),
('diabetes', 'ICD10', 'E08.3543'),
('diabetes', 'ICD10', 'E08.3549'),
('diabetes', 'ICD10', 'E08.3551'),
('diabetes', 'ICD10', 'E08.3552'),
('diabetes', 'ICD10', 'E08.3553'),
('diabetes', 'ICD10', 'E08.3559'),
('diabetes', 'ICD10', 'E08.359'),
('diabetes', 'ICD10', 'E08.3591'),
('diabetes', 'ICD10', 'E08.3592'),
('diabetes', 'ICD10', 'E08.3593'),
('diabetes', 'ICD10', 'E08.3599'),
('diabetes', 'ICD10', 'E08.36'),
('diabetes', 'ICD10', 'E08.37X1'),
('diabetes', 'ICD10', 'E08.37X2'),
('diabetes', 'ICD10', 'E08.37X3'),
('diabetes', 'ICD10', 'E08.37X9'),
('diabetes', 'ICD10', 'E08.39'),
('diabetes', 'ICD10', 'E08.40'),
('diabetes', 'ICD10', 'E08.41'),
('diabetes', 'ICD10', 'E08.42'),
('diabetes', 'ICD10', 'E08.43'),
('diabetes', 'ICD10', 'E08.44'),
('diabetes', 'ICD10', 'E08.49'),
('diabetes', 'ICD10', 'E08.51'),
('diabetes', 'ICD10', 'E08.52'),
('diabetes', 'ICD10', 'E08.59'),
('diabetes', 'ICD10', 'E08.610'),
('diabetes', 'ICD10', 'E08.618'),
('diabetes', 'ICD10', 'E08.620'),
('diabetes', 'ICD10', 'E08.621'),
('diabetes', 'ICD10', 'E08.622'),
('diabetes', 'ICD10', 'E08.628'),
('diabetes', 'ICD10', 'E08.630'),
('diabetes', 'ICD10', 'E08.638'),
('diabetes', 'ICD10', 'E08.641'),
('diabetes', 'ICD10', 'E08.649'),
('diabetes', 'ICD10', 'E08.65'),
('diabetes', 'ICD10', 'E08.69'),
('diabetes', 'ICD10', 'E08.8'),
('diabetes', 'ICD10', 'E08.9'),
('diabetes', 'ICD10', 'E09.00'),
('diabetes', 'ICD10', 'E09.01'),
('diabetes', 'ICD10', 'E09.10'),
('diabetes', 'ICD10', 'E09.11'),
('diabetes', 'ICD10', 'E09.21'),
('diabetes', 'ICD10', 'E09.22'),
('diabetes', 'ICD10', 'E09.29'),
('diabetes', 'ICD10', 'E09.311'),
('diabetes', 'ICD10', 'E09.319'),
('diabetes', 'ICD10', 'E09.321'),
('diabetes', 'ICD10', 'E09.3211'),
('diabetes', 'ICD10', 'E09.3212'),
('diabetes', 'ICD10', 'E09.3213'),
('diabetes', 'ICD10', 'E09.3219'),
('diabetes', 'ICD10', 'E09.329'),
('diabetes', 'ICD10', 'E09.3291'),
('diabetes', 'ICD10', 'E09.3292'),
('diabetes', 'ICD10', 'E09.3293'),
('diabetes', 'ICD10', 'E09.3299'),
('diabetes', 'ICD10', 'E09.331'),
('diabetes', 'ICD10', 'E09.3311'),
('diabetes', 'ICD10', 'E09.3312'),
('diabetes', 'ICD10', 'E09.3313'),
('diabetes', 'ICD10', 'E09.3319'),
('diabetes', 'ICD10', 'E09.339'),
('diabetes', 'ICD10', 'E09.3391'),
('diabetes', 'ICD10', 'E09.3392'),
('diabetes', 'ICD10', 'E09.3393'),
('diabetes', 'ICD10', 'E09.3399'),
('diabetes', 'ICD10', 'E09.341'),
('diabetes', 'ICD10', 'E09.3411'),
('diabetes', 'ICD10', 'E09.3412'),
('diabetes', 'ICD10', 'E09.3413'),
('diabetes', 'ICD10', 'E09.3419'),
('diabetes', 'ICD10', 'E09.349'),
('diabetes', 'ICD10', 'E09.3491'),
('diabetes', 'ICD10', 'E09.3492'),
('diabetes', 'ICD10', 'E09.3493'),
('diabetes', 'ICD10', 'E09.3499'),
('diabetes', 'ICD10', 'E09.351'),
('diabetes', 'ICD10', 'E09.3511'),
('diabetes', 'ICD10', 'E09.3512'),
('diabetes', 'ICD10', 'E09.3513'),
('diabetes', 'ICD10', 'E09.3519'),
('diabetes', 'ICD10', 'E09.3521'),
('diabetes', 'ICD10', 'E09.3522'),
('diabetes', 'ICD10', 'E09.3523'),
('diabetes', 'ICD10', 'E09.3529'),
('diabetes', 'ICD10', 'E09.3531'),
('diabetes', 'ICD10', 'E09.3532'),
('diabetes', 'ICD10', 'E09.3533'),
('diabetes', 'ICD10', 'E09.3539'),
('diabetes', 'ICD10', 'E09.3541'),
('diabetes', 'ICD10', 'E09.3542'),
('diabetes', 'ICD10', 'E09.3543'),
('diabetes', 'ICD10', 'E09.3549'),
('diabetes', 'ICD10', 'E09.3551'),
('diabetes', 'ICD10', 'E09.3552'),
('diabetes', 'ICD10', 'E09.3553'),
('diabetes', 'ICD10', 'E09.3559'),
('diabetes', 'ICD10', 'E09.359'),
('diabetes', 'ICD10', 'E09.3591'),
('diabetes', 'ICD10', 'E09.3592'),
('diabetes', 'ICD10', 'E09.3593'),
('diabetes', 'ICD10', 'E09.3599'),
('diabetes', 'ICD10', 'E09.36'),
('diabetes', 'ICD10', 'E09.37X1'),
('diabetes', 'ICD10', 'E09.37X2'),
('diabetes', 'ICD10', 'E09.37X3'),
('diabetes', 'ICD10', 'E09.37X9'),
('diabetes', 'ICD10', 'E09.39'),
('diabetes', 'ICD10', 'E09.40'),
('diabetes', 'ICD10', 'E09.41'),
('diabetes', 'ICD10', 'E09.42'),
('diabetes', 'ICD10', 'E09.43'),
('diabetes', 'ICD10', 'E09.44'),
('diabetes', 'ICD10', 'E09.49'),
('diabetes', 'ICD10', 'E09.51'),
('diabetes', 'ICD10', 'E09.52'),
('diabetes', 'ICD10', 'E09.59'),
('diabetes', 'ICD10', 'E09.610'),
('diabetes', 'ICD10', 'E09.618'),
('diabetes', 'ICD10', 'E09.620'),
('diabetes', 'ICD10', 'E09.621'),
('diabetes', 'ICD10', 'E09.622'),
('diabetes', 'ICD10', 'E09.628'),
('diabetes', 'ICD10', 'E09.630'),
('diabetes', 'ICD10', 'E09.638'),
('diabetes', 'ICD10', 'E09.641'),
('diabetes', 'ICD10', 'E09.649'),
('diabetes', 'ICD10', 'E09.65'),
('diabetes', 'ICD10', 'E09.69'),
('diabetes', 'ICD10', 'E09.8'),
('diabetes', 'ICD10', 'E09.9'),
('diabetes', 'ICD10', 'E10.10'),
('diabetes', 'ICD10', 'E10.11'),
('diabetes', 'ICD10', 'E10.21'),
('diabetes', 'ICD10', 'E10.22'),
('diabetes', 'ICD10', 'E10.29'),
('diabetes', 'ICD10', 'E10.311'),
('diabetes', 'ICD10', 'E10.319'),
('diabetes', 'ICD10', 'E10.321'),
('diabetes', 'ICD10', 'E10.3211'),
('diabetes', 'ICD10', 'E10.3212'),
('diabetes', 'ICD10', 'E10.3213'),
('diabetes', 'ICD10', 'E10.3219'),
('diabetes', 'ICD10', 'E10.329'),
('diabetes', 'ICD10', 'E10.3291'),
('diabetes', 'ICD10', 'E10.3292'),
('diabetes', 'ICD10', 'E10.3293'),
('diabetes', 'ICD10', 'E10.3299'),
('diabetes', 'ICD10', 'E10.331'),
('diabetes', 'ICD10', 'E10.3311'),
('diabetes', 'ICD10', 'E10.3312'),
('diabetes', 'ICD10', 'E10.3313'),
('diabetes', 'ICD10', 'E10.3319'),
('diabetes', 'ICD10', 'E10.339'),
('diabetes', 'ICD10', 'E10.3391'),
('diabetes', 'ICD10', 'E10.3392'),
('diabetes', 'ICD10', 'E10.3393'),
('diabetes', 'ICD10', 'E10.3399'),
('diabetes', 'ICD10', 'E10.341'),
('diabetes', 'ICD10', 'E10.3411'),
('diabetes', 'ICD10', 'E10.3412'),
('diabetes', 'ICD10', 'E10.3413'),
('diabetes', 'ICD10', 'E10.3419'),
('diabetes', 'ICD10', 'E10.349'),
('diabetes', 'ICD10', 'E10.3491'),
('diabetes', 'ICD10', 'E10.3492'),
('diabetes', 'ICD10', 'E10.3493'),
('diabetes', 'ICD10', 'E10.3499'),
('diabetes', 'ICD10', 'E10.351'),
('diabetes', 'ICD10', 'E10.3511'),
('diabetes', 'ICD10', 'E10.3512'),
('diabetes', 'ICD10', 'E10.3513'),
('diabetes', 'ICD10', 'E10.3519'),
('diabetes', 'ICD10', 'E10.359'),
('diabetes', 'ICD10', 'E10.36'),
('diabetes', 'ICD10', 'E10.37X1'),
('diabetes', 'ICD10', 'E10.37X2'),
('diabetes', 'ICD10', 'E10.37X3'),
('diabetes', 'ICD10', 'E10.37X9'),
('diabetes', 'ICD10', 'E10.39'),
('diabetes', 'ICD10', 'E10.40'),
('diabetes', 'ICD10', 'E10.41'),
('diabetes', 'ICD10', 'E10.42'),
('diabetes', 'ICD10', 'E10.43'),
('diabetes', 'ICD10', 'E10.44'),
('diabetes', 'ICD10', 'E10.49'),
('diabetes', 'ICD10', 'E10.51'),
('diabetes', 'ICD10', 'E10.52'),
('diabetes', 'ICD10', 'E10.59'),
('diabetes', 'ICD10', 'E10.610'),
('diabetes', 'ICD10', 'E10.618'),
('diabetes', 'ICD10', 'E10.620'),
('diabetes', 'ICD10', 'E10.621'),
('diabetes', 'ICD10', 'E10.622'),
('diabetes', 'ICD10', 'E10.628'),
('diabetes', 'ICD10', 'E10.630'),
('diabetes', 'ICD10', 'E10.638'),
('diabetes', 'ICD10', 'E10.641'),
('diabetes', 'ICD10', 'E10.649'),
('diabetes', 'ICD10', 'E10.65'),
('diabetes', 'ICD10', 'E10.69'),
('diabetes', 'ICD10', 'E10.8'),
('diabetes', 'ICD10', 'E10.9'),
('diabetes', 'ICD10', 'E11.00'),
('diabetes', 'ICD10', 'E11.01'),
('diabetes', 'ICD10', 'E11.10'),
('diabetes', 'ICD10', 'E11.11'),
('diabetes', 'ICD10', 'E11.21'),
('diabetes', 'ICD10', 'E11.22'),
('diabetes', 'ICD10', 'E11.29'),
('diabetes', 'ICD10', 'E11.311'),
('diabetes', 'ICD10', 'E11.319'),
('diabetes', 'ICD10', 'E11.321'),
('diabetes', 'ICD10', 'E11.3211'),
('diabetes', 'ICD10', 'E11.3212'),
('diabetes', 'ICD10', 'E11.3213'),
('diabetes', 'ICD10', 'E11.3219'),
('diabetes', 'ICD10', 'E11.329'),
('diabetes', 'ICD10', 'E11.3291'),
('diabetes', 'ICD10', 'E11.3292'),
('diabetes', 'ICD10', 'E11.3293'),
('diabetes', 'ICD10', 'E11.3299'),
('diabetes', 'ICD10', 'E11.331'),
('diabetes', 'ICD10', 'E11.3311'),
('diabetes', 'ICD10', 'E11.3312'),
('diabetes', 'ICD10', 'E11.3313'),
('diabetes', 'ICD10', 'E11.3319'),
('diabetes', 'ICD10', 'E11.339'),
('diabetes', 'ICD10', 'E11.3391'),
('diabetes', 'ICD10', 'E11.3392'),
('diabetes', 'ICD10', 'E11.3393'),
('diabetes', 'ICD10', 'E11.3399'),
('diabetes', 'ICD10', 'E11.341'),
('diabetes', 'ICD10', 'E11.3411'),
('diabetes', 'ICD10', 'E11.3412'),
('diabetes', 'ICD10', 'E11.3413'),
('diabetes', 'ICD10', 'E11.3419'),
('diabetes', 'ICD10', 'E11.349'),
('diabetes', 'ICD10', 'E11.3491'),
('diabetes', 'ICD10', 'E11.3492'),
('diabetes', 'ICD10', 'E11.3493'),
('diabetes', 'ICD10', 'E11.3499'),
('diabetes', 'ICD10', 'E11.351'),
('diabetes', 'ICD10', 'E11.3511'),
('diabetes', 'ICD10', 'E11.3512'),
('diabetes', 'ICD10', 'E11.3513'),
('diabetes', 'ICD10', 'E11.3519'),
('diabetes', 'ICD10', 'E11.3521'),
('diabetes', 'ICD10', 'E11.3522'),
('diabetes', 'ICD10', 'E11.3523'),
('diabetes', 'ICD10', 'E11.3529'),
('diabetes', 'ICD10', 'E11.3531'),
('diabetes', 'ICD10', 'E11.3532'),
('diabetes', 'ICD10', 'E11.3533'),
('diabetes', 'ICD10', 'E11.3539'),
('diabetes', 'ICD10', 'E11.3541'),
('diabetes', 'ICD10', 'E11.3542'),
('diabetes', 'ICD10', 'E11.3543'),
('diabetes', 'ICD10', 'E11.3549'),
('diabetes', 'ICD10', 'E11.3551'),
('diabetes', 'ICD10', 'E11.3552'),
('diabetes', 'ICD10', 'E11.3553'),
('diabetes', 'ICD10', 'E11.3559'),
('diabetes', 'ICD10', 'E11.359'),
('diabetes', 'ICD10', 'E11.3591'),
('diabetes', 'ICD10', 'E11.3592'),
('diabetes', 'ICD10', 'E11.3593'),
('diabetes', 'ICD10', 'E11.3599'),
('diabetes', 'ICD10', 'E11.36'),
('diabetes', 'ICD10', 'E11.37X1'),
('diabetes', 'ICD10', 'E11.37X2'),
('diabetes', 'ICD10', 'E11.37X3'),
('diabetes', 'ICD10', 'E11.37X9'),
('diabetes', 'ICD10', 'E11.39'),
('diabetes', 'ICD10', 'E11.40'),
('diabetes', 'ICD10', 'E11.41'),
('diabetes', 'ICD10', 'E11.42'),
('diabetes', 'ICD10', 'E11.43'),
('diabetes', 'ICD10', 'E11.44'),
('diabetes', 'ICD10', 'E11.49'),
('diabetes', 'ICD10', 'E11.51'),
('diabetes', 'ICD10', 'E11.52'),
('diabetes', 'ICD10', 'E11.59'),
('diabetes', 'ICD10', 'E11.610'),
('diabetes', 'ICD10', 'E11.618'),
('diabetes', 'ICD10', 'E11.620'),
('diabetes', 'ICD10', 'E11.621'),
('diabetes', 'ICD10', 'E11.622'),
('diabetes', 'ICD10', 'E11.628'),
('diabetes', 'ICD10', 'E11.630'),
('diabetes', 'ICD10', 'E11.638'),
('diabetes', 'ICD10', 'E11.641'),
('diabetes', 'ICD10', 'E11.649'),
('diabetes', 'ICD10', 'E11.65'),
('diabetes', 'ICD10', 'E11.69'),
('diabetes', 'ICD10', 'E11.8'),
('diabetes', 'ICD10', 'E11.9'),
('diabetes', 'ICD10', 'E13.00'),
('diabetes', 'ICD10', 'E13.01'),
('diabetes', 'ICD10', 'E13.10'),
('diabetes', 'ICD10', 'E13.11'),
('diabetes', 'ICD10', 'E13.21'),
('diabetes', 'ICD10', 'E13.22'),
('diabetes', 'ICD10', 'E13.29'),
('diabetes', 'ICD10', 'E13.311'),
('diabetes', 'ICD10', 'E13.319'),
('diabetes', 'ICD10', 'E13.321'),
('diabetes', 'ICD10', 'E13.3211'),
('diabetes', 'ICD10', 'E13.3212'),
('diabetes', 'ICD10', 'E13.3213'),
('diabetes', 'ICD10', 'E13.3219'),
('diabetes', 'ICD10', 'E13.329'),
('diabetes', 'ICD10', 'E13.3291'),
('diabetes', 'ICD10', 'E13.3292'),
('diabetes', 'ICD10', 'E13.3293'),
('diabetes', 'ICD10', 'E13.3299'),
('diabetes', 'ICD10', 'E13.331'),
('diabetes', 'ICD10', 'E13.3311'),
('diabetes', 'ICD10', 'E13.3312'),
('diabetes', 'ICD10', 'E13.3313'),
('diabetes', 'ICD10', 'E13.3319'),
('diabetes', 'ICD10', 'E13.339'),
('diabetes', 'ICD10', 'E13.3391'),
('diabetes', 'ICD10', 'E13.3392'),
('diabetes', 'ICD10', 'E13.3393'),
('diabetes', 'ICD10', 'E13.3399'),
('diabetes', 'ICD10', 'E13.341'),
('diabetes', 'ICD10', 'E13.3411'),
('diabetes', 'ICD10', 'E13.3412'),
('diabetes', 'ICD10', 'E13.3413'),
('diabetes', 'ICD10', 'E13.3419'),
('diabetes', 'ICD10', 'E13.349'),
('diabetes', 'ICD10', 'E13.3491'),
('diabetes', 'ICD10', 'E13.3492'),
('diabetes', 'ICD10', 'E13.3493'),
('diabetes', 'ICD10', 'E13.3499'),
('diabetes', 'ICD10', 'E13.351'),
('diabetes', 'ICD10', 'E13.3511'),
('diabetes', 'ICD10', 'E13.3512'),
('diabetes', 'ICD10', 'E13.3513'),
('diabetes', 'ICD10', 'E13.3519'),
('diabetes', 'ICD10', 'E13.3521'),
('diabetes', 'ICD10', 'E13.3522'),
('diabetes', 'ICD10', 'E13.3523'),
('diabetes', 'ICD10', 'E13.3529'),
('diabetes', 'ICD10', 'E13.3531'),
('diabetes', 'ICD10', 'E13.3532'),
('diabetes', 'ICD10', 'E13.3533'),
('diabetes', 'ICD10', 'E13.3539'),
('diabetes', 'ICD10', 'E13.3541'),
('diabetes', 'ICD10', 'E13.3542'),
('diabetes', 'ICD10', 'E13.3543'),
('diabetes', 'ICD10', 'E13.3549'),
('diabetes', 'ICD10', 'E13.3551'),
('diabetes', 'ICD10', 'E13.3552'),
('diabetes', 'ICD10', 'E13.3553'),
('diabetes', 'ICD10', 'E13.3559'),
('diabetes', 'ICD10', 'E13.359'),
('diabetes', 'ICD10', 'E13.36'),
('diabetes', 'ICD10', 'E13.39'),
('diabetes', 'ICD10', 'E13.40'),
('diabetes', 'ICD10', 'E13.41'),
('diabetes', 'ICD10', 'E13.42'),
('diabetes', 'ICD10', 'E13.43'),
('diabetes', 'ICD10', 'E13.44'),
('diabetes', 'ICD10', 'E13.49'),
('diabetes', 'ICD10', 'E13.51'),
('diabetes', 'ICD10', 'E13.52'),
('diabetes', 'ICD10', 'E13.59'),
('diabetes', 'ICD10', 'E13.610'),
('diabetes', 'ICD10', 'E13.618'),
('diabetes', 'ICD10', 'E13.620'),
('diabetes', 'ICD10', 'E13.621'),
('diabetes', 'ICD10', 'E13.622'),
('diabetes', 'ICD10', 'E13.628'),
('diabetes', 'ICD10', 'E13.630'),
('diabetes', 'ICD10', 'E13.638'),
('diabetes', 'ICD10', 'E13.641'),
('diabetes', 'ICD10', 'E13.649'),
('diabetes', 'ICD10', 'E13.65'),
('diabetes', 'ICD10', 'E13.69'),
('diabetes', 'ICD10', 'E13.8'),
('diabetes', 'ICD10', 'E13.9'),
('eating_disorders', 'ICD9', '307.1'),
('eating_disorders', 'ICD9', '307.50'),
('eating_disorders', 'ICD9', '307.51'),
('eating_disorders', 'ICD9', '307.59'),
('eating_disorders', 'ICD9', '783.6'),
('eating_disorders', 'ICD9', '783.0'),
('eating_disorders', 'ICD10', 'F50.00'),
('eating_disorders', 'ICD10', 'F50.2'),
('eating_disorders', 'ICD10', 'F50.81'),
('eating_disorders', 'ICD10', 'F50.9'),
('eating_disorders', 'ICD10', 'R63.2'),
('eating_disorders', 'ICD10', 'R63.0'),
('hyperlipidemia', 'ICD9', '272.0'),
('hyperlipidemia', 'ICD9', '272.1'),
('hyperlipidemia', 'ICD9', '272.2'),
('hyperlipidemia', 'ICD9', '272.3'),
('hyperlipidemia', 'ICD9', '272.4'),
('hyperlipidemia', 'ICD10', 'E78.0'),
('hyperlipidemia', 'ICD10', 'E78.00'),
('hyperlipidemia', 'ICD10', 'E78.01'),
('hyperlipidemia', 'ICD10', 'E78.1'),
('hyperlipidemia', 'ICD10', 'E78.2'),
('hyperlipidemia', 'ICD10', 'E78.3'),
('hyperlipidemia', 'ICD10', 'E78.4'),
('hyperlipidemia', 'ICD10', 'E78.41'),
('hyperlipidemia', 'ICD10', 'E78.49'),
('hyperlipidemia', 'ICD10', 'E78.5'),
('NAFLD', 'ICD9', '571.8'),
('NAFLD', 'ICD9', '794.8'),
('NAFLD', 'ICD9', '790.4'),
('NAFLD', 'ICD10', 'K76.0'),
('NAFLD', 'ICD10', 'K75.81'),
('NAFLD', 'ICD10', 'R94.5'),
('NAFLD', 'ICD10', 'R74.0'),
('Acanthosis_Nigricans', 'ICD9', '701.2'),
('Acanthosis_Nigricans', 'ICD10', 'L83'),
('PCOS', 'ICD9', '256.4'),
('PCOS', 'ICD10', 'E28.2'),
('Obstructive_sleep_apnea', 'ICD9', '327.23'),
('Obstructive_sleep_apnea', 'ICD9', '780.51'),
('Obstructive_sleep_apnea', 'ICD9', '780.53'),
('Obstructive_sleep_apnea', 'ICD9', '780.57'),
('Obstructive_sleep_apnea', 'ICD10', 'G47.33'),
('Obstructive_sleep_apnea', 'ICD10', 'G47.30'),
('depression', 'ICD9', '296.20'),
('depression', 'ICD9', '296.21'),
('depression', 'ICD9', '296.22'),
('depression', 'ICD9', '296.23'),
('depression', 'ICD9', '296.24'),
('depression', 'ICD9', '296.25'),
('depression', 'ICD9', '296.26'),
('depression', 'ICD9', '296.30'),
('depression', 'ICD9', '296.31'),
('depression', 'ICD9', '296.32'),
('depression', 'ICD9', '296.33'),
('depression', 'ICD9', '296.34'),
('depression', 'ICD9', '296.35'),
('depression', 'ICD9', '296.36'),
('depression', 'ICD9', '296.51'),
('depression', 'ICD9', '296.52'),
('depression', 'ICD9', '296.53'),
('depression', 'ICD9', '296.54'),
('depression', 'ICD9', '296.55'),
('depression', 'ICD9', '296.56'),
('depression', 'ICD9', '296.60'),
('depression', 'ICD9', '296.61'),
('depression', 'ICD9', '296.62'),
('depression', 'ICD9', '296.63'),
('depression', 'ICD9', '296.64'),
('depression', 'ICD9', '296.65'),
('depression', 'ICD9', '296.66'),
('depression', 'ICD9', '296.89'),
('depression', 'ICD9', '298.0'),
('depression', 'ICD9', '300.4'),
('depression', 'ICD9', '309.1'),
('depression', 'ICD9', '311'),
('depression', 'ICD10', 'F31.30'),
('depression', 'ICD10', 'F31.31'),
('depression', 'ICD10', 'F31.32'),
('depression', 'ICD10', 'F31.4'),
('depression', 'ICD10', 'F31.5'),
('depression', 'ICD10', 'F31.60'),
('depression', 'ICD10', 'F31.61'),
('depression', 'ICD10', 'F31.62'),
('depression', 'ICD10', 'F31.63'),
('depression', 'ICD10', 'F31.64'),
('depression', 'ICD10', 'F31.75'),
('depression', 'ICD10', 'F31.76'),
('depression', 'ICD10', 'F31.77'),
('depression', 'ICD10', 'F31.78'),
('depression', 'ICD10', 'F31.81'),
('depression', 'ICD10', 'F32.0'),
('depression', 'ICD10', 'F32.1'),
('depression', 'ICD10', 'F32.2'),
('depression', 'ICD10', 'F32.3'),
('depression', 'ICD10', 'F32.4'),
('depression', 'ICD10', 'F32.5'),
('depression', 'ICD10', 'F32.9'),
('depression', 'ICD10', 'F33.0'),
('depression', 'ICD10', 'F33.1'),
('depression', 'ICD10', 'F33.2'),
('depression', 'ICD10', 'F33.3'),
('depression', 'ICD10', 'F33.40'),
('depression', 'ICD10', 'F33.41'),
('depression', 'ICD10', 'F33.42'),
('depression', 'ICD10', 'F33.8'),
('depression', 'ICD10', 'F33.9'),
('depression', 'ICD10', 'F34.1'),
('depression', 'ICD10', 'F43.21'),
('depression', 'ICD10', 'F43.23'),
('anxiety', 'ICD9', '293.84'),
('anxiety', 'ICD9', '300.00'),
('anxiety', 'ICD9', '300.01'),
('anxiety', 'ICD9', '300.02'),
('anxiety', 'ICD9', '300.09'),
('anxiety', 'ICD9', '300.2'),
('anxiety', 'ICD9', '300.21'),
('anxiety', 'ICD9', '300.22'),
('anxiety', 'ICD9', '300.23'),
('anxiety', 'ICD9', '300.29'),
('anxiety', 'ICD9', '309.21'),
('anxiety', 'ICD9', '309.24'),
('anxiety', 'ICD9', '309.28'),
('anxiety', 'ICD9', '300.3'),
('anxiety', 'ICD9', '301.4'),
('anxiety', 'ICD10', 'F40'),
('anxiety', 'ICD10', 'F41'),
('anxiety', 'ICD10', 'F42'),
('anxiety', 'ICD10', 'F43'),
('ADHD', 'ICD9', '312.00'),
('ADHD', 'ICD9', '312.01'),
('ADHD', 'ICD9', '312.02'),
('ADHD', 'ICD9', '312.03'),
('ADHD', 'ICD9', '312.10'),
('ADHD', 'ICD9', '312.11'),
('ADHD', 'ICD9', '312.12'),
('ADHD', 'ICD9', '312.13'),
('ADHD', 'ICD9', '312.20'),
('ADHD', 'ICD9', '312.21'),
('ADHD', 'ICD9', '312.22'),
('ADHD', 'ICD9', '312.23'),
('ADHD', 'ICD9', '312.30'),
('ADHD', 'ICD9', '312.31'),
('ADHD', 'ICD9', '312.32'),
('ADHD', 'ICD9', '312.33'),
('ADHD', 'ICD9', '312.34'),
('ADHD', 'ICD9', '312.35'),
('ADHD', 'ICD9', '312.39'),
('ADHD', 'ICD9', '312.4'),
('ADHD', 'ICD9', '312.81'),
('ADHD', 'ICD9', '312.82'),
('ADHD', 'ICD9', '312.89'),
('ADHD', 'ICD9', '312.9'),
('ADHD', 'ICD9', '314'),
('ADHD', 'ICD9', '314.01'),
('ADHD', 'ICD9', '314.1'),
('ADHD', 'ICD9', '314.2'),
('ADHD', 'ICD9', '314.8'),
('ADHD', 'ICD9', '314.9'),
('ADHD', 'ICD10', 'F63.0'),
('ADHD', 'ICD10', 'F63.1'),
('ADHD', 'ICD10', 'F63.2'),
('ADHD', 'ICD10', 'F63.3'),
('ADHD', 'ICD10', 'F63.81'),
('ADHD', 'ICD10', 'F63.89'),
('ADHD', 'ICD10', 'F63.9'),
('ADHD', 'ICD10', 'F90.0'),
('ADHD', 'ICD10', 'F90.1'),
('ADHD', 'ICD10', 'F90.2'),
('ADHD', 'ICD10', 'F90.8'),
('ADHD', 'ICD10', 'F90.9'),
('ADHD', 'ICD10', 'F91.0'),
('ADHD', 'ICD10', 'F91.1'),
('ADHD', 'ICD10', 'F91.3'),
('ADHD', 'ICD10', 'F91.2'),
('ADHD', 'ICD10', 'F91.8'),
('ADHD', 'ICD10', 'F91.9'),
('asthma', 'ICD9', '493.00'),
('asthma', 'ICD9', '493.01'),
('asthma', 'ICD9', '493.02'),
('asthma', 'ICD9', '493.10'),
('asthma', 'ICD9', '493.11'),
('asthma', 'ICD9', '493.12'),
('asthma', 'ICD9', '493.20'),
('asthma', 'ICD9', '493.21'),
('asthma', 'ICD9', '493.22'),
('asthma', 'ICD9', '493.81'),
('asthma', 'ICD9', '493.82'),
('asthma', 'ICD9', '493.90'),
('asthma', 'ICD9', '493.91'),
('asthma', 'ICD9', '493.92'),
('asthma', 'ICD10', 'J45.20'),
('asthma', 'ICD10', 'J45.21'),
('asthma', 'ICD10', 'J45.22'),
('asthma', 'ICD10', 'J45.30'),
('asthma', 'ICD10', 'J45.31'),
('asthma', 'ICD10', 'J45.32'),
('asthma', 'ICD10', 'J45.40'),
('asthma', 'ICD10', 'J45.41'),
('asthma', 'ICD10', 'J45.42'),
('asthma', 'ICD10', 'J45.50'),
('asthma', 'ICD10', 'J45.51'),
('asthma', 'ICD10', 'J45.52'),
('asthma', 'ICD10', 'J45.901'),
('asthma', 'ICD10', 'J45.902'),
('asthma', 'ICD10', 'J45.909'),
('asthma', 'ICD10', 'J45.990'),
('asthma', 'ICD10', 'J45.991'),
('asthma', 'ICD10', 'J45.998'),
('autism', 'ICD9', '299.0'),
('autism', 'ICD9', '299.00'),
('autism', 'ICD9', '299.01'),
('autism', 'ICD9', '299.1'),
('autism', 'ICD9', '299.11'),
('autism', 'ICD9', '299.8'),
('autism', 'ICD9', '299.8'),
('autism', 'ICD9', '299.81'),
('autism', 'ICD9', '299.9'),
('autism', 'ICD9', '299.9'),
('autism', 'ICD9', '299.91'),
('autism', 'ICD10', 'F84.0'),
('autism', 'ICD10', 'F84.3'),
('autism', 'ICD10', 'F84.5'),
('autism', 'ICD10', 'F84.8'),
('autism', 'ICD10', 'F84.9');
