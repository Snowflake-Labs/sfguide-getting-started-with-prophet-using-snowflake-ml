USE ROLE ACCOUNTADMIN;
create database if  not exists ML_MODELS;
create schema   if  not exists  ML_MODELS.DS;
create warehouse if not exists  ML_FS_WH WAREHOUSE_SIZE = XSMALL;
create stage if not exists ML_MODELS.DS.MODEL_STAGE   ENCRYPTION = (TYPE = 'SNOWFLAKE_SSE');

CREATE ROLE if not exists FR_SCIENTIST;

grant usage on database ML_MODELS to role FR_SCIENTIST;
grant all on schema ML_MODELS.DS to role FR_SCIENTIST;
grant usage on warehouse ML_FS_WH to role FR_SCIENTIST;
grant read on stage  ML_MODELS.DS.MODEL_STAGE  to role FR_SCIENTIST;
grant write on stage  ML_MODELS.DS.MODEL_STAGE  to role FR_SCIENTIST;

