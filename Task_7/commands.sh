awk '{print $1; print $2}' keys | sort | uniq -d > extracted_keys.txt
grep -Eo 'http[s]?://[^ ]+|www\.[^ ]+' data.txt
grep -Eo '\+?[0-9]{1,3}[0-9]{10,12}' data.txt
grep -Eo '([0-9]{1,3}\.){3}[0-9]{1,3}' data.txt
