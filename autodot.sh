#!/bin/bash

filename=$1

echo "$filename.gc" | entr -c bash reload.sh $filename
