create database TRNG_DOJTextAnalysis from demonow as perm=0;
create foreign table gs_tables_db."TRNG_DOJTextAnalysis_AMZ_FINE_FOOD_REVIEWS",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DOJTextAnalysis/AMZ-FINE-FOOD-REVIEWS/'));
create foreign table gs_tables_db."TRNG_DOJTextAnalysis_AMZ_FINE_FOOD_REVIEWS3_text_ou",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DOJTextAnalysis/AMZ-FINE-FOOD-REVIEWS3-text-ou/'));
create foreign table gs_tables_db."TRNG_DOJTextAnalysis_AMZ_FINE_FOOD_REVIEWS_text_out",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DOJTextAnalysis/AMZ-FINE-FOOD-REVIEWS-text-out/'));
create foreign table gs_tables_db."TRNG_DOJTextAnalysis_cyber_events",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DOJTextAnalysis/cyber-events/'));
create foreign table gs_tables_db."TRNG_DOJTextAnalysis_enron_email",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DOJTextAnalysis/enron-email/'));
create foreign table gs_tables_db."TRNG_DOJTextAnalysis_moisturizer_ngram",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DOJTextAnalysis/moisturizer-ngram/'));
create foreign table gs_tables_db."TRNG_DOJTextAnalysis_moisturizer_reviews",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DOJTextAnalysis/moisturizer-reviews/'));
create foreign table gs_tables_db."TRNG_DOJTextAnalysis_moisturizer_reviews_text_outpu",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DOJTextAnalysis/moisturizer-reviews-text-outpu/'));
create foreign table gs_tables_db."TRNG_DOJTextAnalysis_moisturizer_sentiment",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DOJTextAnalysis/moisturizer-sentiment/'));
create foreign table gs_tables_db."TRNG_DOJTextAnalysis_text_parsed",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DOJTextAnalysis/text-parsed/'));
create foreign table gs_tables_db."TRNG_DOJTextAnalysis_tfidf_output1",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DOJTextAnalysis/tfidf-output1/'));
create foreign table gs_tables_db."TRNG_DOJTextAnalysis_tf_output1",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DOJTextAnalysis/tf-output1/'));
create foreign table gs_tables_db."TRNG_DOJTextAnalysis_tf_rename",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-DOJTextAnalysis/tf-rename/'));
replace view TRNG_DOJTextAnalysis.AMZ_FINE_FOOD_REVIEWS as locking row for access select * from  gs_tables_db."TRNG_DOJTextAnalysis_AMZ_FINE_FOOD_REVIEWS";
replace view TRNG_DOJTextAnalysis.AMZ_FINE_FOOD_REVIEWS3_text_ou as locking row for access select * from  gs_tables_db."TRNG_DOJTextAnalysis_AMZ_FINE_FOOD_REVIEWS3_text_ou";
replace view TRNG_DOJTextAnalysis.AMZ_FINE_FOOD_REVIEWS_text_out as locking row for access select * from  gs_tables_db."TRNG_DOJTextAnalysis_AMZ_FINE_FOOD_REVIEWS_text_out";
replace view TRNG_DOJTextAnalysis.cyber_events as locking row for access select * from  gs_tables_db."TRNG_DOJTextAnalysis_cyber_events";
replace view TRNG_DOJTextAnalysis.enron_email as locking row for access select * from  gs_tables_db."TRNG_DOJTextAnalysis_enron_email";
replace view TRNG_DOJTextAnalysis.moisturizer_ngram as locking row for access select * from  gs_tables_db."TRNG_DOJTextAnalysis_moisturizer_ngram";
replace view TRNG_DOJTextAnalysis.moisturizer_reviews as locking row for access select * from  gs_tables_db."TRNG_DOJTextAnalysis_moisturizer_reviews";
replace view TRNG_DOJTextAnalysis.moisturizer_reviews_text_outpu as locking row for access select * from  gs_tables_db."TRNG_DOJTextAnalysis_moisturizer_reviews_text_outpu";
replace view TRNG_DOJTextAnalysis.moisturizer_sentiment as locking row for access select * from  gs_tables_db."TRNG_DOJTextAnalysis_moisturizer_sentiment";
replace view TRNG_DOJTextAnalysis.text_parsed as locking row for access select * from  gs_tables_db."TRNG_DOJTextAnalysis_text_parsed";
replace view TRNG_DOJTextAnalysis.tf_output1 as locking row for access select * from  gs_tables_db."TRNG_DOJTextAnalysis_tf_output1";
replace view TRNG_DOJTextAnalysis.tf_rename as locking row for access select * from  gs_tables_db."TRNG_DOJTextAnalysis_tf_rename";
replace view TRNG_DOJTextAnalysis.tfidf_output1 as locking row for access select * from  gs_tables_db."TRNG_DOJTextAnalysis_tfidf_output1";