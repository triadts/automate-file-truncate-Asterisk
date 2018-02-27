#!/bin/bash

#set log files to empty themselves either periodically and/or when they reach a threshold

#this will identify all files
CURRENT=$(df / | grep / | awk '{ print $5}' | sed 's%//g')
THRESHOLD=90

if [ "$CURRENT" -gt "$THRESHOLD"] ; then

#currently need to define the specific files that should be cleared
truncate -s 0 