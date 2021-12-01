#!/bin/bash

#df -h | awk '/sde2/ {print $4}'
df -h |grep luksdev| cut -d' ' -f6-7
