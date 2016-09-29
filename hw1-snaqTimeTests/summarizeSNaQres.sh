#script for exercise 2 of homework 1
#set up csv file, can later be read as a table

#create headers of csv
echo analysis,hmax,elapsedTime > summarizeSNaQres.csv

#for loop to output each line of the csv
for filename in log/*.log
do
 
  root=$(echo $filename | grep -o '[^\.log]*')
  #grab the root name of the file
  #this method will not work for filenames with l o or g, but is useful for completing the exercise

  hmax=$(grep "hmax =" $filename | head -n 1  | grep -o '[[:digit:]]*')
  #find the first instance of hmax from the analysis files, grab the first digit

  elTime=$(grep "Elapsed time" out/${root}.out | grep -o '[[:digit:]]*\.[[:digit:]]*')
  #find the elapsed time from the file in the out/ folder

  echo $root,$hmax,$elTime >> summarizeSNaQres.csv
  #command to add the comma separated variables to the next line of the csv file
done
