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