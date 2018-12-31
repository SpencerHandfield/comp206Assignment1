#!/bin/bash

#read in the encryption key, removing all white spaces rendering a usable array
codebook=`cat $1 | tr -d "\n"`
#read in the contents of the message to encrypt
toEncrypt=`cat $2`

#prints for testing
#echo $toEncrypt
#echo $codebook

#echo out the encrypted message via tr which replace any letters in the message
#with their appropriate letter in the encryption array we set up prior
#ex: an a in to encrypt will be translated to the first letter in "codebook"
#because of the [] layout
echo "$toEncrypt" | tr [a-zA-Z] ["$codebook"]

