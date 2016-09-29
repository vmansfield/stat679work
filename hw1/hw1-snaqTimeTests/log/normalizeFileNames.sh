for i in 1 2 3 4 5 6 7 8 9
do
  echo $i
  ls timetest$i\_snaq.log
  cp timetest$i\_snaq.log timetest0$i\_snaq.log
done
