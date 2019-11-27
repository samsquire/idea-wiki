#!/bin/bash

FILE="$1"

xml val --quiet $FILE
if [ "$?" -ne 0 ]; then exit 0; fi

while read -r line;
do
	echo -e "$line\t*$FILE"

done < <(xml sel -t -v '//sam[text() != ""]/@name' $FILE)

while read -r line;
do
	echo -e "*$FILE\t$line"
done < <(xml sel -t -v '//sam[not(text())]/@name' $FILE)

