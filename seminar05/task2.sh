#!/bin/bash
git log --pretty=oneline > inp.txt
isnec="0"
touch release_notes.md
while read str; do
    for i in $str; do
        if [[ "$i" == "$1" ]]; then
            isnec="1"
        fi
        if [[ "$i" == "$2" ]]; then
	    	    isnec="0"
	      fi
        if [[ "$isnec" == "1" ]]; then
            echo -n "$i " >> "release_notes.md"
        fi
    done
done < "inp.txt"
rm inp.txt