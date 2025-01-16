#!/bin/bash


url='https://ai-api.xeven.workers.dev/llama'

if [ $# -ne 1 ]
then
    echo "Usage: $0 <text>"
    exit 1
fi

text="answer in short : $1"

# curl --get --data-urlencode "q=$text" "$url" | jq -r '.response'

curl --get --data-urlencode "q=$text" "$url" | grep -oP '(?<="response":")[^"]*'
