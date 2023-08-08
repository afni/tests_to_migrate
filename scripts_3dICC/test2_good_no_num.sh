#!/bin/bash

##################################
## 08/2023 Justin Rajendra
## 3dICC testing

## where is everything?
BaseFolder='../'
OutFolder='results'
cd ${BaseFolder}

OutFile='test2_good_no_num_ICC'
InFile='test2_good_no_num'

3dICC -overwrite \
-prefix ${OutFolder}/${OutFile}.nii.gz \
-jobs 10 \
-model "group_ws+(1|Subj)" \
-dataTable @dataTables/${InFile}.tsv

