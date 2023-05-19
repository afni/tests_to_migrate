# afni_regression_tests

This is a repository of scripts (as well as some small text-based data files)
used to run [regression] testing on AFNI programs.  Most details are TBD.

- this script tree should be copied parallel to a 'data_root' directory,
  so testing scripts access data using a relative path, such as:
    ../../data_root/AFNI_data6/GroupAna_cases
  where the script might be sitting at:
    afni_regress_tests/scripts_3dMVM
      
- at the top level (in the repo tree), directories should be named:
    scripts_LABEL
    data_LABEL (optional, for small data files)
    
    - where LABEL is for a collection of scripts/data, usually for one program
    - e.g. scripts_3dMVM data_3dMVM

- it would be preferable to have each scripts_LABEL directory contain a
  master script: run_all_scripts.tcsh (or bash or txt)
  
    - this script could be used to run all sub-scripts
