#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/polls/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "poll": {
      "title":"'"${TITLE}"'",
      "question":"'"${QUESTION}"'",
      "option1": "'"${OPTION1}"'",
      "option2": "'"${OPTION2}"'",
    }
  }'
  # --header "Authorization: Token token=$TOKEN"

echo
