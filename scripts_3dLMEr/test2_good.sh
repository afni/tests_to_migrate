#!/bin/bash

##################################
## 06/2023 Justin Rajendra
## 3dLMEr testing

## where is everything?
BaseFolder='../'
OutFolder='results'
cd ${BaseFolder}

OutFile='test2_good_LMEr'
InFile='test2_good'

3dLMEr -overwrite \
-prefix ${OutFolder}/${OutFile}.nii.gz \
-jobs 10 \
-model "group_ws+(1|Subj)" \
-qVars "score,rt" \
-dataTable @dataTables/${InFile}.tsv
