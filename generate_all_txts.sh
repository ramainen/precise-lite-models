#!/bin/bash

for audiofile in ./audio/*.wav
do
  echo "$audiofile..."
  echo " "
  for modelfile in ./*.tflite
    do
      model="$(basename -- $modelfile)"
      modelname="${model%.*}"
	  
      audio="$(basename -- $audiofile)"
      audioname="${audio%.*}"
      

      cat "$audiofile"  |  precise-engine  "$modelfile" 2048 >  "./txts/${audioname}__${modelname}.txt"

    done
done


echo "Generating plots..."

for txtfile in ./txts/*.txt
do
  txt="$(basename -- $txtfile)"
  txtname="${txt%.*}"
  echo "${txt}..."
  
  gnuplot -e "set term png size 2000,308; set style line 11 lc rgb '#808080' lt 1; set border 3 back ls 11; set tics nomirror; set style line 12 lc rgb '#808080' lt 0 lw 1; set grid back ls 12; set style line 2 lc rgb '#5e9c36' pt 6 ps 1 lt 1 lw 2; set xlabel '${txtname}'; set ylabel 'y axis label'; set yrange [0:1]; set output './graphs/${txtname}.png' ; plot '${txtfile}' using 0:1 with linespoints  ls 2"
  
done