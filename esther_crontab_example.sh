ENDPOINT=https://api.quotable.io/random
RESPONSE=`/usr/bin/curl $ENDPOING | /usr/bin/jq -r '.content + "\n" + .author'`
echo $RESPONSE >> esther-result.txt
/var/lib/gems/2.5.0/gems/twurl-0.9.5/bin/twurl -d 'status='"$RESPONSE" /1.1/statuses/update.json | /usr/bin/jq '.' > esther-result.txt