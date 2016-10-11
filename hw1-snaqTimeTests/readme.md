This is the folder for the first homework assignment.

Below is the copy command to get the homework folder into my working repository:
cp -r ../../coursedata/hw1-snaqTimeTests/ hw1-snaqTimeTests/


This folder is titled 'hw1-snaqTimeTests,' and contains the
directories 'log' and 'out.' These directories contain the data files used for
homework exercises.

**Update 10/11/2016:** Edits were made to the 'summarizeSNaQres.sh' file to correct the
errors from exercise 2. Additionally, edits were made to the file as per the requirements
for exercise 3.

The following exercises have been completed as part of the first homework
assignment:

## exercises

1. Create a shell script `normalizeFileNames.sh` to change all file names
   `timetesty_snaq.log` to `timetest0y_snaq.log` where "y" is a digit between 1 and 9.
   Similarly, change `timetesty_snaq.out` to `timetest0y_snaq.out`.

  **Note:** The 'normalizeFileNames.sh' script to correct the file names for exercise 1
  is located in this folder and corrects the names for the files in the 'log' and 'out'
  folders. The files with the original names (before the zero was added) still remain
  in the folders.

2. Create a shell script `summarizeSNaQres.sh` to start a summary of the results
   from all these analyses. The script should produce a table in `csv` format,
   with 1 row per analysis and 3 columns:

   - "analysis": the file name root ("xxx")
   - "h": the maximum number of hybridizations allowed during the analysis: `hmax`
   - "CPUtime": total CPU time, or "Elapsed time".

   **Note:** The table output for exercise 2 was saved as 'summarizeSNaQres.csv' and
   can be found in this folder along with the script 'summarizeSNaQres.sh.'

   3. Create a script to summarize the results with more information.
      The script should produce a table in `csv` format with 1 row per analysis,
      the same columns as before and additional columns for:

      - Nruns: number of runs
      - Nfail: tuning parameter, "max number of failed proposals"
      - fabs: tuning parameter called "ftolAbs" in the log file (tolerated
        difference in the absolute value of the score function, to stop the search)
      - frel: "ftolRel"
      - xabs: "xtolAbs"
      - xrel: "xtolRel"
      - seed: main seed, i.e. seed for the first runs
      - under3460: number of runs that returned a network with a score better than
        (below) 3460
      - under3450: number of runs with a network score under 3450
      - under3440: number of runs with a network score under 3440

**Note:** As in exercise 2, the table output for exercise 2 was saved as 'summarizeSNaQres.csv' and
can be found in this folder along with the script 'summarizeSNaQres.sh.'
