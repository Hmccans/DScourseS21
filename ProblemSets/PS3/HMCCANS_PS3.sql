-- !preview conn=DBI::dbConnect(RSQLite::SQLite())

SELECT 1
create table FL_insurance("policyID" INTEGER, "statecode" CHAR, "county" CHAR, "eq_site_limit" INTEGER,"hu_site_limit" INTEGER, "fl_site_limit" INTEGER, "fr_site_limit" INTEGER, "tiv_2011" INTEGER, "tiv_2012" INTEGER, "eq_site_deductible" INTEGER, "hu_site_deductible" INTEGER, "fl_site_deductible" INTEGER, "fr_site_deductible" INTEGER, "point_latitude" INTEGER, "point_longitude" INTEGER, "line" CHAR, "construction" CHAR, "point_granularity" INTEGER);
.mode csv
.import FL_insurance_sample.csv

#head first 10

SELECT * FROM FL_insurance
limit 10;

SELECT DISTINCT county