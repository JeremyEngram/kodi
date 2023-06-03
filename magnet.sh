#!/bin/bash

# Define the URL
URL="https://thepiratebay.org/search.php?q=Belle+Knox&cat=0"

# Fetch the HTML content using curl and store it in a variable
html=$(curl -s "$URL")

# Parse and extract magnet URLs using pup
magnet_urls=$(echo "$html" | pup 'a[href^="magnet:"] attr{href}')

# Save the magnet URLs to a file
echo "$magnet_urls" > magnet_urls.txt

echo "Magnet URLs extracted from $URL and saved in magnet_urls.txt"
