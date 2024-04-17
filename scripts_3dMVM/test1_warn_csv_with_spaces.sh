#!/bin/bash

##################################
## 05/2023 Justin Rajendra
## 3dMVM testing (csv version)
## does not work (not supposed to work)

## where is everything?
BaseFolder='../'
OutFolder='results'
cd ${BaseFolder}

## prefix
OutFile='test1_warn_csv_with_spaces_MVM'
InFile='test1_warn_with_spaces'

3dMVM -overwrite \
-prefix ${OutFolder}/${OutFile}.nii.gz \
-jobs 10 \
-bsVars "group*group2" \
-qVars "score, rt" \
-dataTable @data_dataTables/${InFile}.csv
