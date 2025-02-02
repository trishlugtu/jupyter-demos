CREATE MULTISET TABLE [DQ_DATADB_TEMPLATE].DQ_unq_val_cnt
     (
      sessionid BIGINT,
      databasename VARCHAR(1024) CHARACTER SET LATIN NOT CASESPECIFIC,
      tablename VARCHAR(1024) CHARACTER SET LATIN NOT CASESPECIFIC,
      xcol VARCHAR(1024) CHARACTER SET LATIN NOT CASESPECIFIC,
      xuniquevalue VARCHAR(1024) CHARACTER SET LATIN NOT CASESPECIFIC,
      sum_prv_cnt BIGINT,
      sum_new_cnt BIGINT)
PRIMARY INDEX ( databasename ,tablename ,xcol )
PARTITION BY sessionid ;

