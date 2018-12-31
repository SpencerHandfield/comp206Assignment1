#!/bin/bash

#make codebook one singular list or array for the tr
codebook=`cat $1 | tr -d "\n"`
#read in the contents of the message to decrypt
toDecrypt=`cat $2`

#prints for testing purposes
#echo $toDecrypt
#echo $codebook

#in similar fashion but the opposite to the encrypt script
#in the decrypt we replace any encoded letter based on the codebook
#and tr it to the appropriate location in the a-z lower or upper case
#echo passes it to the standard output to be sent to its own file or to cmd line
echo "$toDecrypt" | tr ["$codebook"] [a-zA-Z]
#this script assumes perfect input via the exact type of codebook we received
