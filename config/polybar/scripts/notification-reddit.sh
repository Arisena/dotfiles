#!/bin/sh
URL="https://www.reddit.com/message/unread/.json?feed=f61304fa356d4bdc5661c2932c2ca372bf2090c1&user=clonex900"
USERAGENT="polybar-scripts/notification-reddit:v1.0 u/clonex900"

notifications=$(curl -sf --user-agent "$USERAGENT" "$URL" | jq '.["data"]["children"] | length')

if [ -n "$notifications" ] && [ "$notifications" -gt 0 ]; then
    echo "R:$notifications"
else
    echo ""
fi
