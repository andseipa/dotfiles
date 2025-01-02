#!/bin/bash

# Load environment variables from ~/.config/.env
if [ -f ~/.config/.env ]; then
  export $(grep -v '^#' ~/.config/.env | xargs)
else
  echo "Error: .env file not found in ~/.config"
  exit 1
fi

# Path to the template and output file
TEMPLATE_FILE=~/.config/gh/hosts.yml.template
OUTPUT_FILE=~/.config/gh/hosts.yml

# Check if the template file exists
if [ ! -f "$TEMPLATE_FILE" ]; then
  echo "Error: Template file not found: $TEMPLATE_FILE"
  exit 1
fi

# Replace {{USER_NAME}} with the value of $USER_NAME and save the result
sed "s/{{USER_NAME}}/$USER_NAME/g" "$TEMPLATE_FILE" >"$OUTPUT_FILE"

echo "Generated $OUTPUT_FILE with USER_NAME=$USER_NAME"
