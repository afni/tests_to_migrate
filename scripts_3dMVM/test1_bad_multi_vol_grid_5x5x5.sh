#!/bin/bash

##################################
## 4/2024 Justin Rajendra
## 3dMVM testing

## where is everything?
BaseFolder='../'
OutFolder='results'
cd ${BaseFolder}

## prefix
OutFile='test1_bad_multi_vol_grid_5x5x5_MVM'
InFile='test1_bad_multi_vol_grid_5x5x5'


3dMVM -overwrite \
-prefix ${OutFolder}/${OutFile}.nii.gz \
-jobs 10 \
-bsVars "group*group2" \
-qVars "score,rt" \
-dataTable @data_dataTables/${InFile}.tsv
