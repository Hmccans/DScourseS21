#!/bin/sh.


#download the data
wget http://spatialkeydocs.s3.amazonaws.com/FL_insurance_sample.csv.zip

#Uncompress
unzip FL_insurance_sample.csv.zip

#delete extraneous files
rm -rf __MACOSX
rm -f FL_insurance_sample.csv.zip



#computer frying time
head -5 FL_insurance_sample.csv
wc -l FL_insurance_sample.csv


#convert
dos2unix -c mac FL_insurance_sample.csv

wc -l FL_insurance_sample.csv
