#!/bin/sh
#automatically generated. think before editing.
 /usr/bin/timeout 15 /usr/bin/espeak -k27 -v mb/mb-en1 --stdin  | /usr/bin/mbrola -e  -f1.4  /usr/local/share/mbrola/en1 - $1.wav ;
 /usr/bin/timeout 15  lame -S --quiet -m m -s 16  --resample 22.05 --preset phone $1.wav $1;
 rm $1.wav 