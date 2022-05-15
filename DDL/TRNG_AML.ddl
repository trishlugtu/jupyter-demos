create database TRNG_AML from demonow as perm=0;
create foreign table gs_tables_db."TRNG_AML_accounts",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AML/accounts/'));
create foreign table gs_tables_db."TRNG_AML_acct_type",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AML/acct-type/'));
create foreign table gs_tables_db."TRNG_AML_alert_history",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AML/alert-history/'));
create foreign table gs_tables_db."TRNG_AML_aml_df_model",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AML/aml-df-model/'));
create foreign table gs_tables_db."TRNG_AML_aml_df_monitortable",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AML/aml-df-monitortable/'));
create foreign table gs_tables_db."TRNG_AML_anomaly_explain",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AML/anomaly-explain/'));
create foreign table gs_tables_db."TRNG_AML_bank_segment",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AML/bank-segment/'));
create foreign table gs_tables_db."TRNG_AML_branch",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AML/branch/'));
create foreign table gs_tables_db."TRNG_AML_cluster_distribution",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AML/cluster-distribution/'));
create foreign table gs_tables_db."TRNG_AML_feature",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AML/feature/'));
create foreign table gs_tables_db."TRNG_AML_features_stats",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AML/features-stats/'));
create foreign table gs_tables_db."TRNG_AML_feature_descriptions",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AML/feature-descriptions/'));
create foreign table gs_tables_db."TRNG_AML_feature_priority",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AML/feature-priority/'));
create foreign table gs_tables_db."TRNG_AML_feature_rule",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AML/feature-rule/'));
create foreign table gs_tables_db."TRNG_AML_job_schedule",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AML/job-schedule/'));
create foreign table gs_tables_db."TRNG_AML_merchant",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AML/merchant/'));
create foreign table gs_tables_db."TRNG_AML_model_feature",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AML/model-feature/'));
create foreign table gs_tables_db."TRNG_AML_model_management",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AML/model-management/'));
create foreign table gs_tables_db."TRNG_AML_party",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AML/party/'));
create foreign table gs_tables_db."TRNG_AML_party_acct",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AML/party-acct/'));
create foreign table gs_tables_db."TRNG_AML_party_cluster",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AML/party-cluster/'));
create foreign table gs_tables_db."TRNG_AML_spending_profile",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AML/spending-profile/'));
create foreign table gs_tables_db."TRNG_AML_summary_stats",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AML/summary-stats/'));
create foreign table gs_tables_db."TRNG_AML_transaction_agg",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AML/transaction-agg/'));
create foreign table gs_tables_db."TRNG_AML_transaction_detail",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AML/transaction-detail/'));
replace view TRNG_AML.accounts as locking row for access select * from  gs_tables_db."TRNG_AML_accounts";
replace view TRNG_AML.acct_type as locking row for access select * from  gs_tables_db."TRNG_AML_acct_type";
replace view TRNG_AML.alert_history as locking row for access select * from  gs_tables_db."TRNG_AML_alert_history";
replace view TRNG_AML.aml_df_model as locking row for access select * from  gs_tables_db."TRNG_AML_aml_df_model";
replace view TRNG_AML.aml_df_monitortable as locking row for access select * from  gs_tables_db."TRNG_AML_aml_df_monitortable";
replace view TRNG_AML.anomaly_explain as locking row for access select * from  gs_tables_db."TRNG_AML_anomaly_explain";
replace view TRNG_AML.bank_segment as locking row for access select * from  gs_tables_db."TRNG_AML_bank_segment";
replace view TRNG_AML.branch as locking row for access select * from  gs_tables_db."TRNG_AML_branch";
replace view TRNG_AML.cluster_distribution as locking row for access select * from  gs_tables_db."TRNG_AML_cluster_distribution";
replace view TRNG_AML.feature as locking row for access select * from  gs_tables_db."TRNG_AML_feature";
replace view TRNG_AML.feature_descriptions as locking row for access select * from  gs_tables_db."TRNG_AML_feature_descriptions";
replace view TRNG_AML.feature_priority as locking row for access select * from  gs_tables_db."TRNG_AML_feature_priority";
replace view TRNG_AML.feature_rule as locking row for access select * from  gs_tables_db."TRNG_AML_feature_rule";
replace view TRNG_AML.features_stats as locking row for access select * from  gs_tables_db."TRNG_AML_features_stats";
replace view TRNG_AML.job_schedule as locking row for access select * from  gs_tables_db."TRNG_AML_job_schedule";
replace view TRNG_AML.merchant as locking row for access select * from  gs_tables_db."TRNG_AML_merchant";
replace view TRNG_AML.model_feature as locking row for access select * from  gs_tables_db."TRNG_AML_model_feature";
replace view TRNG_AML.model_management as locking row for access select * from  gs_tables_db."TRNG_AML_model_management";
replace view TRNG_AML.party as locking row for access select * from  gs_tables_db."TRNG_AML_party";
replace view TRNG_AML.party_acct as locking row for access select * from  gs_tables_db."TRNG_AML_party_acct";
replace view TRNG_AML.party_cluster as locking row for access select * from  gs_tables_db."TRNG_AML_party_cluster";
replace view TRNG_AML.spending_profile as locking row for access select * from  gs_tables_db."TRNG_AML_spending_profile";
replace view TRNG_AML.summary_stats as locking row for access select * from  gs_tables_db."TRNG_AML_summary_stats";
replace view TRNG_AML.transaction_agg as locking row for access select * from  gs_tables_db."TRNG_AML_transaction_agg";
replace view TRNG_AML.transaction_detail as locking row for access select * from  gs_tables_db."TRNG_AML_transaction_detail";
