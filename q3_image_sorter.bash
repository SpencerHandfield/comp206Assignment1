#!/bin/bash

#proces:
#1- find all the jpg
#2- sort them
#create the list

#convert append the list

#ls -t -r not working

#fix output name
directoryName=$1
finalName=${directoryName#*/}

#find all the jpg files
#wanted to isolate with find and printf the modified date and thus use sort -n
#but cant, so kept sort -n as reminder
pictures=$(find $1 -name '*.jpg' | sort -n)

#output
convert -append $pictures Q3_$finalName.jpg


