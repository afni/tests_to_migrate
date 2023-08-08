#!/bin/bash

##################################
## 08/2023 Justin Rajendra
## 3dLME testing

## where is everything?
BaseFolder='../'
OutFolder='results'
cd ${BaseFolder}

OutFile='test2_good_LME'
InFile='test2_good'

3dLME -overwrite \
-prefix ${OutFolder}/${OutFile}.nii.gz \
-jobs 10 \
-model "group_ws" \
-qVars "score,rt" \
-ranEff '~1' \
-dataTable @dataTables/${InFile}.tsv
