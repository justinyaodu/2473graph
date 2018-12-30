#!/bin/bash

filename=$1

gcc -E -x c -undef "$filename.gc" -o "$filename.gv" && echo "gcc passed" \
		&& bash "postgcc.sh" "$filename" && echo "postgcc.sh passed" \
		&& dot -Tsvg "$filename.gv" > "$filename.svg" && echo "dot passed" \
		&& firefox "$filename.svg"
