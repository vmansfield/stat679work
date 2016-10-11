#script for exercise 2 and 3 of homework 1
#set up csv file, can later be read as a table

#create headers of csv
echo analysis,hmax,elapsedTime,Nruns,Nfail,fabs,frel,xabs,xrel,seed,under3460,under3450,under3440 > summarizeSNaQres.csv

#for loop to output each line of the csv
for filename in log/*.log
do

  root=$(basename -s ".log" $filename)
  echo $root
  #grab the root name of the file
  #using basename command instead of grep, this is more efficient than my previous implementation

  hmax=$(sed -E -n "s/hmax = ([[:digit:]]),/\1/p" log/${root}.log)
  #find the first instance of hmax from the analysis files, grab the first digit

  elTime=$(grep "Elapsed time" out/${root}.out | grep -o '[[:digit:]]*\.[[:digit:]]*')
  #find the elapsed time from the file in the out/ folder

  Nruns=$(grep -o "[[:digit:]]* successful run" out/${root}.out | grep -o "[[:digit:]]*")
  #find numbr of runs

  Nfail=$(grep -o "max number of failed proposals = [[:digit:]]*" log/${root}.log | grep -o "[[:digit:]]*")
  #tuning parameter, max number of failed proposals

  fabs=$(grep -o "ftolAbs=[[:digit:]].*[^,]" log/${root}.log | grep -o "[[:digit:]].*")
  #tuning parameter called "ftolAbs" in the log file (tolerated difference in the absolute value of the score function, to stop the search)

  frel=$(sed -E -n "s/.*ftolRel=([[:digit:]].*), ftolAbs=.*/\1/p" log/${root}.log)
  #tuning parameter ftolRel

  xabs=$(sed -E -n "s/xtolAbs=([[:digit:]].[[:digit:]]*), xtolRel=.*/\1/p" log/${root}.log )
  #tuning parameter xtolAbs

  xrel=$(sed -E -n "s/.*xtolRel=([[:digit:]].[[:digit:]]*)./\1/p" log/${root}.log)
  #tuning parameter xtolRel

  seed=$(sed -E -n "s/main seed ([[:digit:]]*)/\1/p" log/${root}.log)
  #main seed, seed for the first runs

  loglik=$(sed -E -n "s/.*loglik=([[:digit:]]*).[[:digit:]]* .*/\1/p" log/${root}.log)
  #loglik variable captures all instances of -loglik in the data files
  #use if statement or loop to generate under3460, under3450, and under3440 variables

  under3440=0
  under3450=0
  under3460=0
  #initialize variables

  for value in $loglik
  do
    if [ $value -lt 3440 ]
    then
        ((++under3440))
    fi

    if [ $value -lt 3450 ]
    then
        ((++under3450))
    fi

    if [ $value -lt 3460 ]
    then
        ((++under3460))
    fi
  done

  echo $root,$hmax,$elTime,$Nruns,$Nfail,$fabs,$frel,$xabs,$xrel,$seed,$under3460,$under3450,$under3440 >> summarizeSNaQres.csv
  #command to add the comma separated variables to the next line of the csv file
done
