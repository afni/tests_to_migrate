#!/bin/bash

##################################
## 05/2023 Justin Rajendra
## 3dMVM testing

## where is everything?
BaseFolder='../'
OutFolder='results'
cd ${BaseFolder}

OutFile='test2_good_1_num_LMEr'
InFile='test2_good_1_num'

## remove log file
rm ${OutFolder}/${OutFile}_log.txt

3dLMEr -overwrite \
-prefix ${OutFolder}/${OutFile}.nii.gz \
-jobs 10 \
-model "group_ws+(1|Subj)" \
-qVars "score,rt" \
-dataTable @dataTables/${InFile}.tsv
