#!/bin/bash

#cat barrymore_3_times.wav |  precise-engine  ../barrymore-5617-33614-e250-s3.tflite 2048 >  barrymore_3_times.wav__barrymore-5617-33614-e250-s3.txt
#cat barrymore_3_times.wav |  precise-engine  ../barrymore-5617-33614-e550-s3.tflite 2048 >  barrymore_3_times.wav__barrymore-5617-33614-e550-s3.txt


#gnuplot -e "set term png size 2000,308; set style line 11 lc rgb '#808080' lt 1; set border 3 back ls 11; set tics nomirror; set style line 12 lc rgb '#808080' lt 0 lw 1; set grid back ls 12; set style line 2 lc rgb '#5e9c36' pt 6 ps 1 lt 1 lw 2; set xlabel 'barrymore_3_times.wav__barrymore-5617-33614-e250-s3'; set ylabel 'y axis label'; set yrange [0:1]; set output 'barrymore_3_times.wav__barrymore-5617-33614-e250-s3_.png' ; plot 'barrymore_3_times.wav__barrymore-5617-33614-e250-s3.txt' using 0:1 with linespoints  ls 2"

#barrymore_1_times__barrymore-5617-33614-e150-s3
for txtfile in ./txts/*.txt
do
  txt="$(basename -- $txtfile)"
  txtname="${txt%.*}"
  
  gnuplot -e "set term png size 2000,308; set style line 11 lc rgb '#808080' lt 1; set border 3 back ls 11; set tics nomirror; set style line 12 lc rgb '#808080' lt 0 lw 1; set grid back ls 12; set style line 2 lc rgb '#5e9c36' pt 6 ps 1 lt 1 lw 2; set xlabel '${txtname}'; set ylabel 'y axis label'; set yrange [0:1]; set output './graphs/${txtname}.png' ; plot '${txtfile}' using 0:1 with linespoints  ls 2"
  
done