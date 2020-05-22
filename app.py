import requests, json, os

url = "https://api.quotable.io/random"

response = requests.get(url)
parsed_response = json.loads(response.text)
tweet = "'status=" + parsed_response.get('content') + '\n' + parsed_response.get('author')  + "'"  
cmd = 'twurl -d {} /1.1/statuses/update.json | jq'.format(tweet)
os.system(cmd)
