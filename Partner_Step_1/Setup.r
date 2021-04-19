# Enter the server name and database name of your CODI VDW

ServerName <- "localhost"
DatabaseName <- "VDW_3_4_DH_1120"

# If you use a specific username and password to connect to your CODI VDW enter those below.
# If you just use your windows credentials to connect, leave these blank.

SQLServerUserName<- ""
SQLServerPassword<- ""

# Only enter a port number if your CODI VDW SQL Server operates on a different port than
#  the standard one of 1433 (this is rare).

PortNumber <- ""

# Leave extra settings blank unless otherwise directed by someone from the DCC (i.e. Rachel)

extraSettings <- ""

# PatenerID corresponds to the initials of your site and is one of the following:
#  Children's Hospital of Colorado = ch
#  Denver Health = dh
#  Girls on the Run = gotr
#  hfc?
#  Kaiser Permanente Colorado = kp

PartnerID <- ""

# Below are the tables possible in the CODI data model.  If any tables have been named 
# differently (i.e, "VITAL_SIGNS" instead of VITAL), update the text within the quotes
# to your CODI table names.

ALERT <- "ALERT"
ASSET_DELIVERY <- "ASSET_DELIVERY"
CENSUS_DEMOG <- "CENSUS_DEMOG"
CENSUS_LOCATION <- "CENSUS_LOCATION"
COST <- "COST"
CURRICULUM_COMPONENT <- "CURRICULUM_COMPONENT"
DEMOGRAPHIC <- "DEMOGRAPHIC"
DIAGNOSIS <- "DIAGNOSIS"
ENCOUNTER <- "ENCOUNTERS"
FAMILY_HISTORY <- "FAMILY_HISTORY"
IDENTIFIER <- "IDENTIFIER"
IDENTITY_HASH_BUNDLE <- "IDENTITY_HASH_BUNDLE"
LAB_RESULT_CM <- "LAB_RESULT_CM"
LINK <- "LINK"
PRESCRIBING <- "PRESCRIBING"
PROCEDURES <- "PROCEDURES"
PROGRAM <- "PROGRAM"
PROVIDER <- "PROVIDER"
REFERRAL <- "REFERRAL"
SESSION <- "SESSION"
SESSION_ALERT <- "SESSION_ALERT"
VITAL <- "VITAL"
