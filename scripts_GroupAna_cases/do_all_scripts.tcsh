#!/bin/tcsh

set data_root  = ../../data_root

set data_src   = $data_root/AFNI_data6
set data_local = GroupAna_cases

# --------------------------------------------------
# back up old stuff
if ( -d $data_local ) then
    set pdir = $data_local.prev

    if ( -d $pdir ) then
       \rm -fr $pdir
    endif
    echo "++ moving $data_local to $pdir"
    mv $data_local $pdir
endif

# --------------------------------------------------
# get new data
echo "++ copying remote $data_local to local..."
cp -rp $data_src/$data_local .

# --------------------------------------------------
# get to work
cd $data_local

foreach dir ( ?.* )

   echo ======================================================================
   echo $dir
   echo ""
   cd $dir

   foreach file ( run.*.txt )
      set label = `echo $file | cut -d . -f 2`
      if ( $file != run.$label.txt ) then
         echo "** bad run name : $file"
         exit 1
      endif

      echo =============== running $file ===============
      tcsh -x $file |& tee log.$file

      if ( $status ) then
         touch FAILURE.$file
      endif

      echo ""
   end

   cd ..

end


echo ""
echo "-- searching for FAILUREs..."
find . -name FAILURE.\*
echo ""

