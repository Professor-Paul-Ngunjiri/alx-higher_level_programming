#!/bin/bash

# Check if the URL argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Send a request to the URL using curl and store the response body in a variable
response=$(curl -s -w "%{size_download}" -o /dev/null "$1")

# Display the size of the response body in bytes
echo "Response body size: $response bytes"
