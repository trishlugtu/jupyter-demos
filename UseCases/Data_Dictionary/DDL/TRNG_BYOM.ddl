create database TRNG_BYOM from Demo_User as perm=0;
create foreign table gs_tables_db."TRNG_BYOM_svm_iris_new", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BYOM/svm-iris-new/'));
create foreign table gs_tables_db."TRNG_BYOM_h2o_encypt_lic", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BYOM/h2o-encypt-lic/'));
create foreign table gs_tables_db."TRNG_BYOM_boston", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BYOM/boston/'));
create foreign table gs_tables_db."TRNG_BYOM_h2o_empty_lic", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BYOM/h2o-empty-lic/'));
create foreign table gs_tables_db."TRNG_BYOM_h2o_NULL_lic", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BYOM/h2o-NULL-lic/'));
create foreign table gs_tables_db."TRNG_BYOM_energy_no_consumption_datamart", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BYOM/energy-no-consumption-datamart/'));
create foreign table gs_tables_db."TRNG_BYOM_h2o_lic", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BYOM/h2o-lic/'));
create foreign table gs_tables_db."TRNG_BYOM_winesTest1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BYOM/winesTest1/'));
create foreign table gs_tables_db."TRNG_BYOM_svm_iris", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BYOM/svm-iris/'));
create foreign table gs_tables_db."TRNG_BYOM_results_upload_from_Editor", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BYOM/results-upload-from-Editor/'));
create foreign table gs_tables_db."TRNG_BYOM_housing_test", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BYOM/housing-test/'));
create foreign table gs_tables_db."TRNG_BYOM_h2o_bad_lic", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BYOM/h2o-bad-lic/'));
create foreign table gs_tables_db."TRNG_BYOM_h2o_spclChar_lic", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BYOM/h2o-spclChar-lic/'));
create foreign table gs_tables_db."TRNG_BYOM_winesTest_2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BYOM/winesTest-2/'));
create foreign table gs_tables_db."TRNG_BYOM_winesTest_stress4", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BYOM/winesTest-stress4/'));
create foreign table gs_tables_db."TRNG_BYOM_winesTest_col", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BYOM/winesTest-col/'));
create foreign table gs_tables_db."TRNG_BYOM_winesTest2", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BYOM/winesTest2/'));
create foreign table gs_tables_db."TRNG_BYOM_energy", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BYOM/energy/'));
replace view TRNG_BYOM.boston as locking row for access select
"id"
,"crim"
,"zn"
,"indus"
,"chas"
,"nox"
,"rm"
,"age"
,"dis"
,"rad"
,"tax"
,"ptratio"
,"black"
,"lstat"
,"medv"
from gs_tables_db.TRNG_BYOM_boston;
replace view TRNG_BYOM.energy as locking row for access select
"id"
,"consumption"
,"is_dark"
,"is_light"
,"is_from_light_to_dark"
,"is_from_dark_to_light"
,"is_holiday"
,"is_pre_holiday"
,"monday"
,"tuesday"
,"wednesday"
,"thursday"
,"friday"
,"saturday"
,"sunday"
,"is_dark_and_is_holiday"
,"is_dark_and_is_pre_holiday"
,"is_light_and_is_holiday"
,"is_light_and_is_pre_holiday"
,"is_from_dark_to_light_and_is_holiday"
,"is_from_dark_to_light_and_is_pre_holiday"
,"is_from_light_to_dark_and_is_holiday"
,"is_from_light_to_dark_and_is_pre_holiday"
,"hour_0"
,"hour_1"
,"hour_2"
,"hour_3"
,"hour_4"
,"hour_5"
,"hour_6"
,"hour_7"
,"hour_8"
,"hour_9"
,"hour_10"
,"hour_11"
,"hour_12"
,"hour_13"
,"hour_14"
,"hour_15"
,"hour_16"
,"hour_17"
,"hour_18"
,"hour_19"
,"hour_20"
,"hour_21"
,"hour_22"
,"hour_23"
,"nasa_temp"
,"lag_24"
,"lag_25"
,"lag_26"
,"lag_27"
,"lag_28"
,"lag_29"
,"lag_30"
,"lag_31"
,"lag_32"
,"lag_48"
,"lag_72"
,"lag_96"
,"lag_168"
,"cap_air_temperature_lag_24"
,"cap_air_temperature_lag_48"
,"cap_cloud_area_fraction_lag_24"
,"cap_cloud_area_fraction_lag_48"
,"cap_precipitation_amount_lag_24"
,"cap_precipitation_amount_lag_48"
from gs_tables_db.TRNG_BYOM_energy;
replace view TRNG_BYOM.energy_no_consumption_datamart as locking row for access select
,"TD_TIMECODE"
,"consumption"
,"y"
,"m"
,"d"
,"h"
,"weekday"
,"nasa_temp"
,"cap_air_temperature"
,"cap_cloud_area_fraction"
,"cap_precipitation_amount"
,"is_dark"
,"is_light"
,"is_from_light_to_dark"
,"is_from_dark_to_light"
,"is_holiday"
,"is_pre_holiday"
from gs_tables_db.TRNG_BYOM_energy_no_consumption_datamart;
replace view TRNG_BYOM.h2o_bad_lic as locking row for access select
"id"
,"license"
from gs_tables_db.TRNG_BYOM_h2o_bad_lic;
replace view TRNG_BYOM.h2o_empty_lic as locking row for access select
"id"
,"license"
from gs_tables_db.TRNG_BYOM_h2o_empty_lic;
replace view TRNG_BYOM.h2o_encypt_lic as locking row for access select
"id"
,"license"
from gs_tables_db.TRNG_BYOM_h2o_encypt_lic;
replace view TRNG_BYOM.h2o_lic as locking row for access select
"id"
,"license"
from gs_tables_db.TRNG_BYOM_h2o_lic;
replace view TRNG_BYOM.h2o_NULL_lic as locking row for access select
"id"
,"license"
from gs_tables_db.TRNG_BYOM_h2o_NULL_lic;
replace view TRNG_BYOM.h2o_spclChar_lic as locking row for access select
"id"
,"license"
from gs_tables_db.TRNG_BYOM_h2o_spclChar_lic;
replace view TRNG_BYOM.housing_test as locking row for access select
"sn"
,"price"
,"lotsize"
,"bedrooms"
,"bathrms"
,"stories"
,"driveway"
,"recroom"
,"fullbase"
,"gashw"
,"airco"
,"garagepl"
,"prefarea"
,"homestyle"
from gs_tables_db.TRNG_BYOM_housing_test;
replace view TRNG_BYOM.results_upload_from_Editor as locking row for access select
"TD_TIMECODE"
,"consumption"
,"y"
,"m"
,"d"
,"h"
,"weekday"
,"nasa_temp"
,"cap_air_temperature"
,"cap_cloud_area_fraction"
,"cap_precipitation_amount"
,"is_dark"
,"is_light"
,"is_from_light_to_dark"
,"is_from_dark_to_light"
,"is_holiday"
,"is_pre_holiday"
,"thread_id"
from gs_tables_db.TRNG_BYOM_results_upload_from_Editor;
replace view TRNG_BYOM.svm_iris as locking row for access select
"id"
,"sepal_length"
,"sepal_width"
,"petal_length"
,"petal_width"
,"species"
from gs_tables_db.TRNG_BYOM_svm_iris;
replace view TRNG_BYOM.svm_iris_new as locking row for access select
"id"
,"sepal_length"
,"sepal_width"
,"petal_length"
,"petal_width"
,"species"
from gs_tables_db.TRNG_BYOM_svm_iris_new;
replace view TRNG_BYOM.winesTest1 as locking row for access select
"wine_id"
,"winetype"
,"total_sulfur_dioxide"
,"free_sulfur_dioxide"
,"fixed_acidity"
,"volatile_acidity"
,"alcohol"
,"citric_acid"
,"residual_sugar"
,"quality"
,"chlorides"
,"density"
,"pH"
,"sulphates"
,"grapes"
,"BestDateForDrink"
from gs_tables_db.TRNG_BYOM_winesTest1;
replace view TRNG_BYOM.winesTest2 as locking row for access select
"wine_id"
,"winetype"
,"total_sulfur_dioxide"
,"free_sulfur_dioxide"
,"fixed_acidity"
,"volatile_acidity"
,"alcohol"
,"citric_acid"
,"residual_sugar"
,"quality"
,"chlorides"
,"density"
,"pH"
,"sulphates"
,"grapes"
,"BestDateForDrink"
,"type"
,"c_varbyte"
,"c_byte"
,"c_interval_second"
,"c_interval_minute"
,"c_interval_hour"
,"c_interval_day"
,"c_interval_month"
,"c_interval_year"
,"c_interval_minute_to_second"
,"c_interval_hour_to_second"
,"c_interval_hour_to_minute"
,"c_interval_day_to_second"
,"c_interval_day_to_minute"
,"c_interval_day_to_hour"
,"c_interval_year_to_month"
from gs_tables_db.TRNG_BYOM_winesTest2;
replace view TRNG_BYOM.winesTest_2 as locking row for access select
"wine_id"
,"winetype"
,"total_sulfur_dioxide"
,"free_sulfur_dioxide"
,"fixed_acidity"
,"volatile_acidity"
,"alcohol"
,"citric_acid"
,"residual_sugar"
,"quality"
,"chlorides"
,"density"
,"pH"
,"sulphates"
,"grapes"
,"BestDateForDrink"
,"type"
from gs_tables_db.TRNG_BYOM_winesTest_2;
replace view TRNG_BYOM.winesTest_col as locking row for access select
"wine_id"
,"winetype&=__..389211h"
,"total_sulfur_dioxide"
,"free_sulfur_dioxide"
,"fixed_acidity"
,"volatile_acidity"
,"alcohol"
,"citric_acid"
,"residual_sugar"
,"quality"
,"chlorides"
,"density"
,"pH"
,"sulphates"
,"grapes"
,"Best Date For Drink"
from gs_tables_db.TRNG_BYOM_winesTest_col;
replace view TRNG_BYOM.winesTest_stress4 as locking row for access select
"wine_id"
,"winetype"
,"total_sulfur_dioxide"
,"free_sulfur_dioxide"
,"fixed_acidity"
,"volatile_acidity"
,"alcohol"
,"citric_acid"
,"residual_sugar"
,"quality"
,"chlorides"
,"density"
,"pH"
,"sulphates"
,"grapes"
,"BestDateForDrink"
,"type"
from gs_tables_db.TRNG_BYOM_winesTest_stress4;
