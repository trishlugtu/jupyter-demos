create database TRNG_TECHBYTES from demonow as perm=0;
create foreign table gs_tables_db."TRNG_TECHBYTES_Accounts",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TECHBYTES/Accounts/'));
create foreign table gs_tables_db."TRNG_TECHBYTES_Acct_Ind",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TECHBYTES/Acct-Ind/'));
create foreign table gs_tables_db."TRNG_TECHBYTES_ADS_Py",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TECHBYTES/ADS-Py/'));
create foreign table gs_tables_db."TRNG_TECHBYTES_Customer",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TECHBYTES/Customer/'));
create foreign table gs_tables_db."TRNG_TECHBYTES_Cust_Ind",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TECHBYTES/Cust-Ind/'));
create foreign table gs_tables_db."TRNG_TECHBYTES_ml__valib_transform_1614360874",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TECHBYTES/ml--valib-transform-1614360874/'));
create foreign table gs_tables_db."TRNG_TECHBYTES_ml__valib_transform_1614366667",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TECHBYTES/ml--valib-transform-1614366667/'));
create foreign table gs_tables_db."TRNG_TECHBYTES_Transactions",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-TECHBYTES/Transactions/'));
replace view TRNG_TECHBYTES.ADS_Py as locking row for access select * from  gs_tables_db."TRNG_TECHBYTES_ADS_Py";
replace view TRNG_TECHBYTES.Accounts as locking row for access select * from  gs_tables_db."TRNG_TECHBYTES_Accounts";
replace view TRNG_TECHBYTES.Acct_Ind as locking row for access select * from  gs_tables_db."TRNG_TECHBYTES_Acct_Ind";
replace view TRNG_TECHBYTES.Cust_Ind as locking row for access select * from  gs_tables_db."TRNG_TECHBYTES_Cust_Ind";
replace view TRNG_TECHBYTES.Customer as locking row for access select * from  gs_tables_db."TRNG_TECHBYTES_Customer";
replace view TRNG_TECHBYTES.Transactions as locking row for access select * from  gs_tables_db."TRNG_TECHBYTES_Transactions";
replace view TRNG_TECHBYTES.ml__valib_transform_1614360874 as locking row for access select * from  gs_tables_db."TRNG_TECHBYTES_ml__valib_transform_1614360874";
replace view TRNG_TECHBYTES.ml__valib_transform_1614366667 as locking row for access select * from  gs_tables_db."TRNG_TECHBYTES_ml__valib_transform_1614366667";