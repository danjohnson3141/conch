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
  curl "https://stage-api-access.evanta.com${route}" -s \
  -H 'Authorization: Token token="54321"' \
  -H 'X_API_EMAIL: graham.baas@evanta.com' \
  -H 'X-API-Tenant: 18i09H5ylZ0n1dkfW8v2DJNw080sh30D' | python -mjson.tool > $filename
  echo "\`\`\`json" | cat - $filename > temp && mv temp $filename
  echo "\`\`\`" >> $filename
done < get_urls.txt



