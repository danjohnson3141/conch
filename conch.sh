#!/bin/bash
path='output/'
ext='.md'

while read p; do
	arrIN=(${p//,/ })
	route=${arrIN[0]}
	filename="${path}${arrIN[1]}${ext}"
	# filename="output/JSON_GET${filename//\//_}.md"
	echo $route
	echo $filename
  curl "http://localhost:1337/your_api.com${route}" -s \
  -H 'Authorization: Token token="secret"' \
  -H 'X_API_EMAIL: dan.johnson@example.com' | python -mjson.tool > $filename
  echo "\`\`\`json" | cat - $filename > temp && mv temp $filename
  echo "\`\`\`" >> $filename
done < get_urls.txt