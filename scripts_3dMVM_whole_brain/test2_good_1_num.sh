#!/bin/bash

##################################
## 05/2023 Justin Rajendra
## 3dMVM testing

## where is everything?
BaseFolder='../'
OutFolder='results'
cd ${BaseFolder}

## prefix
OutFile='test2_good_1_num_MVM'
InFile='test2_good_1_num'

3dMVM -overwrite \
-prefix ${OutFolder}/${OutFile}.nii.gz \
-jobs 10 \
-bsVars "group_bs" \
-wsVars "group_ws" \
-qVars "score" \
-dataTable @data_dataTables/${InFile}.tsv
