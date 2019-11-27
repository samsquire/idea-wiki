#!/bin/bash
make convert
ORDERED_FILES=( $( (for f in ./*.md; do ./createdeps.sh $f; done) | ./deporder.rb | grep '*' | sed 's@\*@@g' ) )

for file in "${ORDERED_FILES[@]}"
do
	basename="${file/.\//}"
	echo "$file"
	extractfile.sh "$basename"
done


index=${#ORDERED_FILES[@]}
echo $index
while [ "$index" -gt 0 ]; do
	((index--))
	file=${ORDERED_FILES[$index]}
	basename="${file/.\//}"
	infile="./merged/$basename"
	outfile="./generated/${basename/.md/.html}"
	echo "$file -> $outfile"
	join.sh "$basename"
	echo "pandoc -f markdown -t html5 -o $outfile $infile"
	pandoc -f markdown -t html5 -o "$outfile" "$infile"
done
