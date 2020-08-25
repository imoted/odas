#!/bin/bash

# VAR1="separated"
VAR1=$1
sox -r 16000 -c 4 -b 16 -e signed-integer ${VAR1}.raw -t wav ${VAR1}_convert.wav 
sox ${VAR1}_convert.wav  -c 1 ${VAR1}_convert_1.wav remix 1
sox ${VAR1}_convert.wav  -c 1 ${VAR1}_convert_2.wav remix 2
sox ${VAR1}_convert.wav  -c 1 ${VAR1}_convert_3.wav remix 3
sox ${VAR1}_convert.wav  -c 1 ${VAR1}_convert_4.wav remix 4
