#!/bin/bash

##################################
## 05/2023 Justin Rajendra
## 3dMVM testing

## where is everything?
BaseFolder='../'
OutFolder='results'
cd ${BaseFolder}

OutFile='test1_bad_multi_vol'

3dMVM -overwrite \
-prefix ${OutFolder}/${OutFile}.nii.gz \
-jobs 10 \
-bsVars "group*group2" \
-qVars "score,rt" \
-dataTable @dataTables/${OutFile}.tsv
