#!/bin/bash
# BAhJIiUwZmQ3YzRiMTAyODYwMTBkMzM2ZGQ0ODI3MDhkZDNkNgY6BkVG--684e137089e2655e1e96d944422a506f4ae3f965

curl "http://localhost:4741/players" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "player": {
      "first_name": "'"${FIRST}"'",
      "last_name": "'"${LAST}"'",
      "personal_info": "'"${INFO}"'",
      "team": "'"${TEAM}"'",
      "stats": "'"${STATS}"'",
      "league": "'"${LEAGUE}"'",
      "user_id": "'"${USER}"'"
    }
  }'

echo
