#!/bin/bash

##################################
## 08/2023 Justin Rajendra
## 3dMSS testing

## where is everything?
BaseFolder='../'
OutFolder='results'
cd ${BaseFolder}

## prefix
OutFile='test1_good_MSS'
InFile='test1_good'

3dMSS -overwrite \
-prefix ${OutFolder}/${OutFile}.nii.gz \
-jobs 10 -cio \
-mrr 's(score)' \
-qVars "score" \
-prediction @dataTables/${InFile}_pred.tsv \
-dataTable @dataTables/${InFile}.tsv
