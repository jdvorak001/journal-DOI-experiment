for F in data/journals/0039-3169
do 
   TITLE=$( cat $F | grep -o -e '"title":"[^"]*"' )
   cat $F | grep -o -e '"dois-by-issued-year":\[\[.*\]\]' | grep -o -E '[0-9]{4},[0-9]+' | sort | while read X ; do echo $X $TITLE ; done
done
