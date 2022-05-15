create database TRNG_TDSysAnalytics from demonow as perm=0;
create foreign table gs_tables_db."TRNG_TDSysAnalytics_CPU_HIST",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDSysAnalytics/CPU-HIST/'));
create foreign table gs_tables_db."TRNG_TDSysAnalytics_CPU_HIST_fcRESULTS",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDSysAnalytics/CPU-HIST-fcRESULTS/'));
create foreign table gs_tables_db."TRNG_TDSysAnalytics_DB_HIST",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDSysAnalytics/DB-HIST/'));
create foreign table gs_tables_db."TRNG_TDSysAnalytics_DB_HIST_fcRESULTS",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDSysAnalytics/DB-HIST-fcRESULTS/'));
create foreign table gs_tables_db."TRNG_TDSysAnalytics_USER_HIST",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDSysAnalytics/USER-HIST/'));
create foreign table gs_tables_db."TRNG_TDSysAnalytics_USER_HIST_fcPRF",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDSysAnalytics/USER-HIST-fcPRF/'));
create foreign table gs_tables_db."TRNG_TDSysAnalytics_USER_HIST_fcUSER",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDSysAnalytics/USER-HIST-fcUSER/'));
create foreign table gs_tables_db."TRNG_TDSysAnalytics_USER_HIST_fcWKLD",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TDSysAnalytics/USER-HIST-fcWKLD/'));
replace view TRNG_TDSysAnalytics.CPU_HIST as locking row for access select * from  gs_tables_db."TRNG_TDSysAnalytics_CPU_HIST";
replace view TRNG_TDSysAnalytics.CPU_HIST_fcRESULTS as locking row for access select * from  gs_tables_db."TRNG_TDSysAnalytics_CPU_HIST_fcRESULTS";
replace view TRNG_TDSysAnalytics.DB_HIST as locking row for access select * from  gs_tables_db."TRNG_TDSysAnalytics_DB_HIST";
replace view TRNG_TDSysAnalytics.DB_HIST_fcRESULTS as locking row for access select * from  gs_tables_db."TRNG_TDSysAnalytics_DB_HIST_fcRESULTS";
replace view TRNG_TDSysAnalytics.USER_HIST as locking row for access select * from  gs_tables_db."TRNG_TDSysAnalytics_USER_HIST";
replace view TRNG_TDSysAnalytics.USER_HIST_fcPRF as locking row for access select * from  gs_tables_db."TRNG_TDSysAnalytics_USER_HIST_fcPRF";
replace view TRNG_TDSysAnalytics.USER_HIST_fcUSER as locking row for access select * from  gs_tables_db."TRNG_TDSysAnalytics_USER_HIST_fcUSER";
replace view TRNG_TDSysAnalytics.USER_HIST_fcWKLD as locking row for access select * from  gs_tables_db."TRNG_TDSysAnalytics_USER_HIST_fcWKLD";
