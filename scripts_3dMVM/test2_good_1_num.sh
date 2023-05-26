#!/bin/bash

##################################
## 05/2023 Justin Rajendra
## 3dMVM testing

## where is everything?
BaseFolder='../'
OutFolder='results'
cd ${BaseFolder}

OutFile='test2_good_1_num'

## remove log file
rm ${OutFolder}/${OutFile}_log.txt

3dMVM -overwrite \
-prefix ${OutFolder}/${OutFile}.nii.gz \
-jobs 10 \
-bsVars "group_bs" \
-wsVars "group_ws" \
-qVars "score" \
-dataTable @dataTables/${OutFile}.tsv
