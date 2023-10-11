
snomed2icd <- read.csv(here("csv", "snomed2icd.csv"), stringsAsFactors = F) %>%
  mutate_all(as.character) %>%  as_tibble() 
patientlist_location <- list.files(here("FROM_DCC"), pattern = paste0("index_site_", PartnerID, ".csv" ), ignore.case = T)
patientlist <- read.csv(here("FROM_DCC",patientlist_location), stringsAsFactors = F, 
                           colClasses =c("linkid"="character", "site"="character", "index_site"="character", 
                                         "inclusion" = "numeric", "exclusion" = "numeric")) %>% as_tibble()

result <- tryCatch({
  
  conn <- getNewDBConnection()
  tempResult1 <- run_db_query(db_conn=conn, sql_location=here("sql", paste0("Step", CODISTEP), sqlType, "snomed2icd.sql"))
  cat("Loading SNOMED to ICD codes...\n")
  DatabaseConnector::insertTable(connection = conn, data = snomed2icd, tableName = "#snomed2icd", tempTable=T)

  cat("Loading index_site data from DCC...\n")
  tempResult2 <- run_db_query(db_conn=conn, sql_location=here("sql", paste0("Step", CODISTEP), sqlType, "patientlist.sql"))
  DatabaseConnector::insertTable(connection = conn, data = patientlist, tableName = "#patientlist", tempTable=T)
  
  tempResult3 <- run_db_query(db_conn=conn, 
                              sql_location=here("sql", paste0("Step", CODISTEP), sqlType, "bmiage.sql"))
  tempResult4 <- run_db_query(db_conn=conn, 
                              sql_location=here("sql", paste0("Step", CODISTEP), sqlType, "pmca.sql"))
  tempResult5 <- run_db_query(db_conn=conn, 
                              sql_location=here("sql", paste0("Step", CODISTEP), sqlType, "comorb_codes.sql"))
  tempResult6 <- run_db_query(db_conn=conn, 
                              sql_location=here("sql", paste0("Step", CODISTEP), sqlType, "study_cohort.sql"))
  tempResult7 <- run_db_query(db_conn=conn, 
                              sql_location=here("sql", paste0("Step", CODISTEP), sqlType, "cohort.sql"))
  tempResult8 <- run_db_query(db_conn=conn, 
                              sql_location=here("sql", paste0("Step", CODISTEP), sqlType, "anchor_study_cohort.sql"))
  tempResult9 <- run_db_query(db_conn=conn, 
                              sql_location=here("sql", paste0("Step", CODISTEP), sqlType, "encounters_vital_join.sql"))
  tempResult10 <- run_db_query(db_conn=conn, 
                              sql_location=here("sql", paste0("Step", CODISTEP), sqlType, "rand_enc.sql"))
  tempResult11 <- run_db_query(db_conn=conn, 
                               sql_location=here("sql", paste0("Step", CODISTEP), sqlType, "anchor_comparison_cohort.sql"))
  tempResult12 <- run_db_query(db_conn=conn, 
                               sql_location=here("sql", paste0("Step", CODISTEP), sqlType, "anchor_date.sql"))
  tempResult13 <- run_db_query(db_conn=conn, 
                             sql_location=here("sql", paste0("Step", CODISTEP), sqlType, "cohort_clean.sql"))
  tempResult14 <- run_db_query(db_conn=conn, 
                               sql_location=here("sql", paste0("Step", CODISTEP), sqlType, "pmca_input.sql"))
  tempResult15 <- run_db_query(db_conn=conn, 
                               sql_location=here("sql", paste0("Step", CODISTEP), sqlType, "cohort_pmca.sql"))
  tempResult16 <- run_db_query(db_conn=conn, 
                               sql_location=here("sql", paste0("Step", CODISTEP), sqlType, "annotated_measures.sql"))
  tempResult17 <- run_db_query(db_conn=conn, 
                               sql_location=here("sql", paste0("Step", CODISTEP), sqlType, "cohort_pmca_bmi.sql"))
  tempResult18 <- run_db_query(db_conn=conn, 
                               sql_location=here("sql", paste0("Step", CODISTEP), sqlType, "tmpbmi.sql"))
  tempResult19 <- run_db_query(db_conn=conn, 
                               sql_location=here("sql", paste0("Step", CODISTEP), sqlType, "cohort_pmca_bmi_p95.sql"))
  tempResult20 <- run_db_query(db_conn=conn, 
                               sql_location=here("sql", paste0("Step", CODISTEP), sqlType, "insurance.sql"))
  tempResult21 <- run_db_query(db_conn=conn, 
                               sql_location=here("sql", paste0("Step", CODISTEP), sqlType, "cohort_pmca_bmi_p95_insurance.sql"))
  tempResult22 <- run_db_query(db_conn=conn, 
                               sql_location=here("sql", paste0("Step", CODISTEP), sqlType, "coconditions.sql"))
  tempResult23 <- run_db_query(db_conn=conn, 
                               sql_location=here("sql", paste0("Step", CODISTEP), sqlType, "diagnosis_CC_ind_any.sql"))
  tempResult24 <- run_db_query(db_conn=conn, 
                               sql_location=here("sql", paste0("Step", CODISTEP), sqlType, "cohort_CC.sql"))
}, error = function(err) {
  stop(err)
}, finally = function(){
  tryCatch({DBI::dbDisconnect(conn)})
})
dir.create(here("output", paste0("Step_", CODISTEP)), showWarnings = F, recursive = T)

tryCatch({
  step_3_result <- run_db_query_andromeda(db_conn=conn, query_text = "SELECT DISTINCT * FROM #cohort_CC", andromedaTableName = "cohort_CC")
  writeOutput_andromeda("step_3_result", step_3_result, andromedaTableName = "cohort_CC")
  bmiage <- run_db_query_andromeda(db_conn=conn, query_text = "SELECT DISTINCT * FROM #bmiage", andromedaTableName = "bmiage")
  writeOutput_andromeda("bmiage", bmiage, andromedaTableName = "bmiage")
  pmca <- run_db_query_andromeda(db_conn=conn, query_text = "SELECT DISTINCT * FROM #pmca", andromedaTableName = "pmca")
  writeOutput_andromeda("pmca", pmca, andromedaTableName = "pmca")
  comorb_codes <- run_db_query_andromeda(db_conn=conn, query_text = "SELECT DISTINCT * FROM #comorb_codes", andromedaTableName = "comorb_codes")
  writeOutput_andromeda("comorb_codes", comorb_codes, andromedaTableName = "comorb_codes")
  study_cohort <- run_db_query_andromeda(db_conn=conn, query_text = "SELECT DISTINCT * FROM #study_cohort", andromedaTableName = "study_cohort")
  writeOutput_andromeda("study_cohort", study_cohort, andromedaTableName = "study_cohort")
  cohort <- run_db_query_andromeda(db_conn=conn, query_text = "SELECT DISTINCT * FROM #cohort", andromedaTableName = "cohort")
  writeOutput_andromeda("cohort", cohort, andromedaTableName = "cohort")
  anchor_study_cohort <- run_db_query_andromeda(db_conn=conn, query_text = "SELECT DISTINCT * FROM #anchor_study_cohort", andromedaTableName = "anchor_study_cohort")
  writeOutput_andromeda("anchor_study_cohort", anchor_study_cohort, andromedaTableName = "anchor_study_cohort")
  encounters_vital_join <- run_db_query_andromeda(db_conn=conn, query_text = "SELECT DISTINCT * FROM #encounters_vital_join", andromedaTableName = "encounters_vital_join")
  writeOutput_andromeda("encounters_vital_join", encounters_vital_join, andromedaTableName = "encounters_vital_join")
  rand_enc <- run_db_query_andromeda(db_conn=conn, query_text = "SELECT DISTINCT * FROM #rand_enc", andromedaTableName = "rand_enc")
  writeOutput_andromeda("rand_enc", rand_enc, andromedaTableName = "rand_enc")
  anchor_comparison_cohort <- run_db_query_andromeda(db_conn=conn, query_text = "SELECT DISTINCT * FROM #anchor_comparison_cohort", andromedaTableName = "anchor_comparison_cohort")
  writeOutput_andromeda("anchor_comparison_cohort", anchor_comparison_cohort, andromedaTableName = "anchor_comparison_cohort")
  anchor_date <- run_db_query_andromeda(db_conn=conn, query_text = "SELECT DISTINCT * FROM #anchor_date", andromedaTableName = "anchor_date")
  writeOutput_andromeda("anchor_date", anchor_date, andromedaTableName = "anchor_date")
  pmca_input <- run_db_query_andromeda(db_conn=conn, query_text = "SELECT DISTINCT * FROM #pmca_input", andromedaTableName = "pmca_input")
  writeOutput_andromeda("pmca_input", pmca_input, andromedaTableName = "pmca_input")
  cohort_pmca <- run_db_query_andromeda(db_conn=conn, query_text = "SELECT DISTINCT * FROM #cohort_pmca", andromedaTableName = "cohort_pmca")
  writeOutput_andromeda("cohort_pmca", step_3_result, andromedaTableName = "cohort_pmca")
   annotated_measures <- run_db_query_andromeda(db_conn=conn, query_text = "SELECT DISTINCT * FROM #annotated_measures", andromedaTableName = "annotated_measures")
  writeOutput_andromeda("annotated_measures", annotated_measures, andromedaTableName = "annotated_measures")
   cohort_pmca_bmi <- run_db_query_andromeda(db_conn=conn, query_text = "SELECT DISTINCT * FROM #cohort_pmca_bmi", andromedaTableName = "cohort_pmca_bmi")
  writeOutput_andromeda("cohort_pmca_bmi", cohort_pmca_bmi, andromedaTableName = "cohort_pmca_bmi")
   tmpbmi <- run_db_query_andromeda(db_conn=conn, query_text = "SELECT DISTINCT * FROM #tmpbmi", andromedaTableName = "tmpbmi")
  writeOutput_andromeda("tmpbmi", tmpbmi, andromedaTableName = "tmpbmi")
   cohort_pmca_bmi_p95 <- run_db_query_andromeda(db_conn=conn, query_text = "SELECT DISTINCT * FROM #cohort_pmca_bmi_p95", andromedaTableName = "cohort_pmca_bmi_p95")
  writeOutput_andromeda("cohort_pmca_bmi_p95", cohort_pmca_bmi_p95, andromedaTableName = "cohort_pmca_bmi_p95")
   insurance <- run_db_query_andromeda(db_conn=conn, query_text = "SELECT DISTINCT * FROM #insurance", andromedaTableName = "insurance")
  writeOutput_andromeda("insurance", insurance, andromedaTableName = "insurance")
   cohort_pmca_bmi_p95_insurance <- run_db_query_andromeda(db_conn=conn, query_text = "SELECT DISTINCT * FROM #cohort_pmca_bmi_p95_insurance", andromedaTableName = "cohort_pmca_bmi_p95_insurance")
  writeOutput_andromeda("cohort_pmca_bmi_p95_insurance", cohort_pmca_bmi_p95_insurance, andromedaTableName = "cohort_pmca_bmi_p95_insurance")
   coconditions <- run_db_query_andromeda(db_conn=conn, query_text = "SELECT DISTINCT * FROM #coconditions", andromedaTableName = "coconditions")
  writeOutput_andromeda("coconditions", coconditions, andromedaTableName = "coconditions")
   diagnosis_CC_ind_any <- run_db_query_andromeda(db_conn=conn, query_text = "SELECT DISTINCT * FROM #diagnosis_CC_ind_any", andromedaTableName = "diagnosis_CC_ind_any")
  writeOutput_andromeda("diagnosis_CC_ind_any", diagnosis_CC_ind_any, andromedaTableName = "diagnosis_CC_ind_any")
   cohort_CC <- run_db_query_andromeda(db_conn=conn, query_text = "SELECT DISTINCT * FROM #cohort_CC", andromedaTableName = "cohort_CC")
  writeOutput_andromeda("cohort_CC", cohort_CC, andromedaTableName = "cohort_CC")
  message(paste0("CODI Step ", CODISTEP, " done!"))
}, finally = {
  Andromeda::close(step_3_result)
})
#result <- tryCatch({
#  source(here("R", "MITRE", "R_2_1-step-4.R"))
#  step4Output <- matched_data_id
#}, error = function(err) {
#  stop(err)
#}, finally = function(){
#  tryCatch({DBI::dbDisconnect(conn)})
#})


writeOutput("PSM_matched_data", step_3_result)
message(paste0("CODI Step ", CODISTEP + 1, " done!"))

