#!/bin/bash

##################################
## 05/2023 Justin Rajendra
## 3dMVM testing

## where is everything?
BaseFolder='../'
OutFolder='results'
cd ${BaseFolder}

## prefix
OutFile='test2_good_MVM_5x5x5'
InFile='test2_good_5x5x5'

3dMVM -overwrite \
-prefix ${OutFolder}/${OutFile}.nii.gz \
-jobs 10 \
-bsVars "group_bs" \
-wsVars "group_ws" \
-qVars "score,rt" \
-dataTable @data_dataTables/${InFile}.tsv
