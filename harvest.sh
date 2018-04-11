#!/bin/sh
cat data/issn.txt | \
while read ISSN
do
  wget -nv --directory-prefix=data/journals/ https://api.crossref.org/journals/$ISSN
done
