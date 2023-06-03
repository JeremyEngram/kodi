#!/bin/bash

# Define the URL
URL="https://thepiratebay.org"

# Fetch the HTML content using curl and store it in a variable
html=$(curl -s "$URL")

# Copy the DOM using pup and store it in a file
echo "$html" | pup 'html' > dom.html

echo "DOM copied from $URL and saved in dom.html"
