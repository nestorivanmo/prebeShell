#!/bin/bash

if [ -z $1 ]
then
 find
elif [ -n $1 ]
then
 find ./"$1"
fi




