#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/polls"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "poll": {
      "option1": "By land",
      "option2": "By sea"
    }
  }'

echo
