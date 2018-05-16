#!/bin/bash

#set log files to empty themselves either periodically and/or when they reach a threshold

#this will identify all files
CURRENT=$(df / | grep / | awk '{ print $5}' | sed 's%//g')
THRESHOLD=80

if [ "$CURRENT" -gt "$THRESHOLD"] ; then
#this should only erase log files that have reached the threshold 
truncate -s 0 /var/log/asterisk/*
