#!/bin/bash

##################################
## 08/2023 Justin Rajendra
## 3dLME testing

## where is everything?
BaseFolder='../'
OutFolder='results'
cd ${BaseFolder}

OutFile='test2_good_no_num_LME'
InFile='test2_good_no_num'

## remove log file
rm ${OutFolder}/${OutFile}_log.txt

3dLME -overwrite \
-prefix ${OutFolder}/${OutFile}.nii.gz \
-jobs 10 \
-model "group_ws" \
-ranEff '~1' \
-dataTable @dataTables/${InFile}.tsv

