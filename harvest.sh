#!/bin/sh
cat data/issn.txt | \
sort | uniq | \
while read ISSN
do
  wget -nv --directory-prefix=data/journals/ https://api.crossref.org/journals/$ISSN
done
