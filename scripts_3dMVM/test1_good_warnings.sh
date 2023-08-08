#!/bin/bash

##################################
## 05/2023 Justin Rajendra
## 3dMVM testing

## where is everything?
BaseFolder='../'
OutFolder='results'
cd ${BaseFolder}

## prefix
OutFile='test1_good_warnings_MVM'
InFile='test1_good_warnings'

3dMVM -overwrite \
-prefix ${OutFolder}/${OutFile}.nii.gz \
-jobs 10 \
-bsVars "group*group2" \
-qVars "score,rt" \
-dataTable @dataTables/${InFile}.tsv
