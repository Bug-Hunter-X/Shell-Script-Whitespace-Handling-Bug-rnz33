#!/bin/bash

# This script attempts to process a file line by line,
# but it has a subtle bug related to how it handles whitespace.

while IFS= read -r line; do
  # Process each line here...
  echo "Processing: $line"
done < "input.txt"

# The issue is that if input.txt has leading or trailing whitespace
# on any line, that whitespace will be included in the '$line' variable.
# This can lead to unexpected results depending on the "processing" done in the loop.