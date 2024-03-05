#!/bin/bash

##################################
## 03/2024 Justin Rajendra
## 3dMVM testing

## where is everything?
BaseFolder='../'
OutFolder='results'
cd ${BaseFolder}

## prefix
OutFile='test2_good_no_num_MVM_5x5x5'
InFile='test2_good_no_num_5x5x5'

3dMVM -overwrite \
-prefix ${OutFolder}/${OutFile}.nii.gz \
-jobs 10 \
-bsVars "group_bs" \
-wsVars "group_ws" \
-dataTable @data_dataTables/${InFile}.tsv
