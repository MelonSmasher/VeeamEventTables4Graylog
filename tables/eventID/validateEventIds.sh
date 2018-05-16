#!/bin/bash
while IFS='' read -r line || [[ -n "$line" ]]; do
    echo "Testing ${line}...";
    if jq '.' ${line}; then
      echo "${line} passed.";
    else
      echo "${line} failed validation!";
      exit;
    fi
done < 'list.txt'
echo "All Event ID's have passed validation!";
