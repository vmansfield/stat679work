for i in 1 2 3 4 5 6 7 8 9
do
  echo $i
  ls timetest$i\_snaq.out
  cp timetest$i\_snaq.out timetest0$i\_snaq.out
done
