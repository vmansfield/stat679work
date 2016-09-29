This is the folder for the first homework assignment.

Below is the copy command to get the homework folder into my working repository:
cp -r ../../coursedata/hw1-snaqTimeTests/ hw1-snaqTimeTests/


This folder contains the directory 'hw1-snaqTimeTests,' which contains the
directories 'log' and 'out.' These directories contain the  files used for
homework exercises.

The following exercises have been completed as part of the first homework
assignment:

## exercises

1. Create a shell script `normalizeFileNames.sh` to change all file names
   `timetesty_snaq.log` to `timetest0y_snaq.log` where "y" is a digit between 1 and 9.
   Similarly, change `timetesty_snaq.out` to `timetest0y_snaq.out`.

  Note: both the 'log' and 'out' folders contain a 'normalizeFileNames.sh' script to correct the file names for exercise 1.

2. Create a shell script `summarizeSNaQres.sh` to start a summary of the results
   from all these analyses. The script should produce a table in `csv` format,
   with 1 row per analysis and 3 columns:

   - "analysis": the file name root ("xxx")
   - "h": the maximum number of hybridizations allowed during the analysis: `hmax`
   - "CPUtime": total CPU time, or "Elapsed time".

   Note: the table output for exercise 2 was saved as 'summarizeSNaQres.csv' and
   can be found in the 'log' folder along with the script 'summarizeSNaQres.sh.'
