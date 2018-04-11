#!/bin/sh
cat data/issn.txt | \
while read ISSN
do
  echo wget -nv https://api.crossref.org/journals/$ISSN
done
