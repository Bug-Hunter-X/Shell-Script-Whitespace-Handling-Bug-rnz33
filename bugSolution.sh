#!/bin/bash

# This script correctly processes a file line by line,
# handling whitespace appropriately.

while IFS= read -r line; do
  # Trim leading/trailing whitespace
  line=$(echo "$line" | xargs)
  # Process each line here...
  echo "Processing: $line"
done < "input.txt"

# Using xargs ensures that leading and trailing whitespace is removed
# before the line is processed, resolving the issue.