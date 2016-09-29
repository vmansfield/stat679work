#script for exercise 1 of homework 1
for i in 1 2 3 4 5 6 7 8 9
do
  echo $i
  #test to see what iteration of the loop you are in
  ls log\timetest$i\_snaq.log
  cp log\timetest$i\_snaq.log log\timetest0$i\_snaq.log
  #copy the log files and rename them with the new format
  ls out\timetest$i\_snaq.out
  cp out\timetest$i\_snaq.out out\timetest0$i\_snaq.out
  #copy the out files and rename them with the new format
done


