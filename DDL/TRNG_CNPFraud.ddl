create database TRNG_CNPFraud from demonow as perm=0;
create foreign table gs_tables_db."TRNG_CNPFraud_accounts",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CNPFraud/accounts/'));
create foreign table gs_tables_db."TRNG_CNPFraud_acct_type",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CNPFraud/acct-type/'));
create foreign table gs_tables_db."TRNG_CNPFraud_acc_output",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CNPFraud/acc-output/'));
create foreign table gs_tables_db."TRNG_CNPFraud_bank_segment",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CNPFraud/bank-segment/'));
create foreign table gs_tables_db."TRNG_CNPFraud_cc_fraud",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CNPFraud/cc-fraud/'));
create foreign table gs_tables_db."TRNG_CNPFraud_cc_no_fraud",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CNPFraud/cc-no-fraud/'));
create foreign table gs_tables_db."TRNG_CNPFraud_cc_test_1090",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CNPFraud/cc-test-1090/'));
create foreign table gs_tables_db."TRNG_CNPFraud_cc_train_1090",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CNPFraud/cc-train-1090/'));
create foreign table gs_tables_db."TRNG_CNPFraud_cc_transactions",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CNPFraud/cc-transactions/'));
create foreign table gs_tables_db."TRNG_CNPFraud_cnp_model",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CNPFraud/cnp-model/'));
create foreign table gs_tables_db."TRNG_CNPFraud_cnp_monitortable",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CNPFraud/cnp-monitortable/'));
create foreign table gs_tables_db."TRNG_CNPFraud_cnp_predict",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CNPFraud/cnp-predict/'));
create foreign table gs_tables_db."TRNG_CNPFraud_cnp_predict_train",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CNPFraud/cnp-predict-train/'));
create foreign table gs_tables_db."TRNG_CNPFraud_count_output",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CNPFraud/count-output/'));
create foreign table gs_tables_db."TRNG_CNPFraud_credit_limit",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CNPFraud/credit-limit/'));
create foreign table gs_tables_db."TRNG_CNPFraud_feature_descriptions",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CNPFraud/feature-descriptions/'));
create foreign table gs_tables_db."TRNG_CNPFraud_fraud_type",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CNPFraud/fraud-type/'));
create foreign table gs_tables_db."TRNG_CNPFraud_mcc",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CNPFraud/mcc/'));
create foreign table gs_tables_db."TRNG_CNPFraud_merchant",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CNPFraud/merchant/'));
create foreign table gs_tables_db."TRNG_CNPFraud_party",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CNPFraud/party/'));
create foreign table gs_tables_db."TRNG_CNPFraud_party_cc",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CNPFraud/party-cc/'));
create foreign table gs_tables_db."TRNG_CNPFraud_party_demo",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CNPFraud/party-demo/'));
create foreign table gs_tables_db."TRNG_CNPFraud_respcode",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CNPFraud/respcode/'));
create foreign table gs_tables_db."TRNG_CNPFraud_rocauc_train",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CNPFraud/rocauc-train/'));
create foreign table gs_tables_db."TRNG_CNPFraud_roc_input_train",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CNPFraud/roc-input-train/'));
create foreign table gs_tables_db."TRNG_CNPFraud_stat_output",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-CNPFraud/stat-output/'));
replace view TRNG_CNPFraud.acc_output as locking row for access select * from  gs_tables_db."TRNG_CNPFraud_acc_output";
replace view TRNG_CNPFraud.accounts as locking row for access select * from  gs_tables_db."TRNG_CNPFraud_accounts";
replace view TRNG_CNPFraud.acct_type as locking row for access select * from  gs_tables_db."TRNG_CNPFraud_acct_type";
replace view TRNG_CNPFraud.bank_segment as locking row for access select * from  gs_tables_db."TRNG_CNPFraud_bank_segment";
replace view TRNG_CNPFraud.cc_fraud as locking row for access select * from  gs_tables_db."TRNG_CNPFraud_cc_fraud";
replace view TRNG_CNPFraud.cc_no_fraud as locking row for access select * from  gs_tables_db."TRNG_CNPFraud_cc_no_fraud";
replace view TRNG_CNPFraud.cc_test_1090 as locking row for access select * from  gs_tables_db."TRNG_CNPFraud_cc_test_1090";
replace view TRNG_CNPFraud.cc_train_1090 as locking row for access select * from  gs_tables_db."TRNG_CNPFraud_cc_train_1090";
replace view TRNG_CNPFraud.cc_transactions as locking row for access select * from  gs_tables_db."TRNG_CNPFraud_cc_transactions";
replace view TRNG_CNPFraud.cnp_model as locking row for access select * from  gs_tables_db."TRNG_CNPFraud_cnp_model";
replace view TRNG_CNPFraud.cnp_monitortable as locking row for access select * from  gs_tables_db."TRNG_CNPFraud_cnp_monitortable";
replace view TRNG_CNPFraud.cnp_predict as locking row for access select * from  gs_tables_db."TRNG_CNPFraud_cnp_predict";
replace view TRNG_CNPFraud.cnp_predict_train as locking row for access select * from  gs_tables_db."TRNG_CNPFraud_cnp_predict_train";
replace view TRNG_CNPFraud.count_output as locking row for access select * from  gs_tables_db."TRNG_CNPFraud_count_output";
replace view TRNG_CNPFraud.credit_limit as locking row for access select * from  gs_tables_db."TRNG_CNPFraud_credit_limit";
replace view TRNG_CNPFraud.feature_descriptions as locking row for access select * from  gs_tables_db."TRNG_CNPFraud_feature_descriptions";
replace view TRNG_CNPFraud.fraud_type as locking row for access select * from  gs_tables_db."TRNG_CNPFraud_fraud_type";
replace view TRNG_CNPFraud.mcc as locking row for access select * from  gs_tables_db."TRNG_CNPFraud_mcc";
replace view TRNG_CNPFraud.merchant as locking row for access select * from  gs_tables_db."TRNG_CNPFraud_merchant";
replace view TRNG_CNPFraud.party as locking row for access select * from  gs_tables_db."TRNG_CNPFraud_party";
replace view TRNG_CNPFraud.party_cc as locking row for access select * from  gs_tables_db."TRNG_CNPFraud_party_cc";
replace view TRNG_CNPFraud.party_demo as locking row for access select * from  gs_tables_db."TRNG_CNPFraud_party_demo";
replace view TRNG_CNPFraud.respcode as locking row for access select * from  gs_tables_db."TRNG_CNPFraud_respcode";
replace view TRNG_CNPFraud.roc_input_train as locking row for access select * from  gs_tables_db."TRNG_CNPFraud_roc_input_train";
replace view TRNG_CNPFraud.rocauc_train as locking row for access select * from  gs_tables_db."TRNG_CNPFraud_rocauc_train";
replace view TRNG_CNPFraud.stat_output as locking row for access select * from  gs_tables_db."TRNG_CNPFraud_stat_output";
