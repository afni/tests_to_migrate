# NB. Assumes Python 3.10 or later
#

set PYTHON = python3.13

$PYTHON ./physio_calc.py  -resp_file sub-005_ses-01_task-rest_run-1_physio-Resp.txt -card_file sub-005_ses-01_task-rest_run-1_physio-ECG.txt -dset_tr 2.2 -dset_nt 220 -dset_nslice 33 -dset_slice_pattern  alt+z -freq 50 -do_fix_nan -save_proc_peaks -save_proc_troughs -save_proc_troughs -save_proc_filtered_ts 

$PYTHON ./findBadSegments.py -directory sub-005_ses-01_task-rest_run-1_physio/physio_physio_extras/ -freq 50 -resp_file sub-005_ses-01_task-rest_run-1_physio-Resp.txt -card_file sub-005_ses-01_task-rest_run-1_physio-ECG.txt  -out_dir BadRegions/sub-005_ses-01_task-rest_run-1_physio_f50

$PYTHON ./findBadSegments.py -directory DHsub-01_run-1_100/physio_physio_extras/ -freq 2000 -resp_file DHsub-01_run-1_100.resp -card_file DHsub-01_run-1_100.card  -out_dir BadRegions/DHsub-01_run-1_100_f2000

$PYTHON ./physio_calc.py  -resp_file DHsub-01_run-1_100to300.resp -card_file DHsub-01_run-1_100to300.card -dset_tr 1.0 -dset_nt 150 -dset_nslice 33 -dset_slice_pattern  alt+z -freq 2000 -do_fix_nan -save_proc_peaks -save_proc_troughs -save_proc_troughs -save_proc_filtered_ts -out_dir DHsub-01_run-1_100to300 -prefilt_max_freq 50 -prefilt_mode median 

$PYTHON ./findBadSegments.py -directory DHsub-01_run-1_100to300/physio_physio_extras/ -freq 2000 -resp_file DHsub-01_run-1_100to300.resp -card_file DHsub-01_run-1_100to300.card -out_dir BadRegions/DHsub-01_run-1_100to300

physio_calc.py  -resp_file DHsub-01_run-1.resp -card_file  DHsub-01_run-1.card -out_dir DHsub-01_run-1  -prefilt_max_freq 50 -prefilt_mode median -dset_tr 1.0  -dset_nt 150 -dset_nslice 33 -dset_slice_pattern  alt+z -freq 2000 -do_fix_nan -save_proc_peaks -save_proc_troughs -save_proc_troughsa 

$PYTHON ./findBadSegments.py -directory DHsub-01_run-1/physio_physio_extras/ -freq 2000 -resp_file DHsub-01_run-1.resp -card_file  DHsub-01_run-1.card -expand_factor 40 -out_dir BadRegions/DHsub-01_run-1

physio_calc.py -resp_file DHsub-02_run-2.resp -card_file  DHsub-02_run-2.card -out_dir DHsub-02_run-2  -prefilt_max_freq 50 -prefilt_mode median -dset_tr 1.0  -dset_nt 150 -dset_nslice 33 -dset_slice_pattern  alt+z -freq 2000 -do_fix_nan -save_proc_peaks -save_proc_troughs -save_proc_troughs 

$PYTHON ./findBadSegments.py -directory DHsub-02_run-2/physio_physio_extras/ -freq 2000 -resp_file DHsub-02_run-2.resp -card_file  DHsub-02_run-2.card -expand_factor 40 -out_dir BadRegions/DHsub-02_run-2

physio_calc.py -resp_file DHsub-03_run-1.resp -card_file  DHsub-03_run-1.card -out_dir DHsub-03_run-1  -prefilt_max_freq 50 -prefilt_mode median -dset_tr 1.0  -dset_nt 150 -dset_nslice 33 -dset_slice_pattern  alt+z -freq 2000 -do_fix_nan -save_proc_peaks -save_proc_troughs -save_proc_troughs 

$PYTHON ./findBadSegments.py -directory DHsub-03_run-1/physio_physio_extras/ -freq 2000 -resp_file DHsub-03_run-1.resp -card_file  DHsub-03_run-1.card -expand_factor 40 -out_dir BadRegions/DHsub-03_run-1

physio_calc.py -resp_file DHsub-04_run-1.resp -card_file  DHsub-04_run-1.card -out_dir DHsub-04_run-1  -prefilt_max_freq 50 -prefilt_mode median -dset_tr 1.0  -dset_nt 150 -dset_nslice 33 -dset_slice_pattern  alt+z -freq 2000 -do_fix_nan -save_proc_peaks -save_proc_troughs -save_proc_troughs

$PYTHON ./findBadSegments.py -directory DHsub-04_run-1/physio_physio_extras/ -freq 2000 -resp_file DHsub-04_run-1.resp -card_file  DHsub-04_run-1.card -expand_factor 40 -out_dir BadRegions/DHsub-04_run-1
