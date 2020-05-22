ENDPOINT=https://api.quotable.io/random
RESPONSE=`curl $ENDPOINT | jq -r '.content + "\n" + .author'`
echo $RESPONSE
twurl -d 'status='"$RESPONSE" /1.1/statuses/update.json | jq '.' > esther-result.txt