#!/bin/bash

##################################
## 05/2023 Justin Rajendra
## 3dMVM testing (csv version)
## does not work

## where is everything?
BaseFolder='../'
OutFolder='results'
cd ${BaseFolder}

OutFile='test1_good'

3dMVM -overwrite \
-prefix ${OutFolder}/${OutFile}.nii.gz \
-jobs 10 \
-bsVars "group*group2" \
-qVars "score,rt" \
-dataTable @dataTables/${OutFile}.csv
