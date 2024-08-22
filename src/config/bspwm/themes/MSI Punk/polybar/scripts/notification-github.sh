#!/bin/sh

# bspwm config directory #
BSPWM_DIR="$HOME/.config/bspwm"

USERNAME=$(grep -oP 'github-username = \K.*' "${BSPWM_DIR}/exodia.conf")
ACCESS_TOKEN=$(grep -oP 'github-access-token = \K.*' "${BSPWM_DIR}/exodia.conf")

USER="${USERNAME}"
# You can get your Personal access tokens from here : https://github.com/settings/tokens #
TOKEN="${ACCESS_TOKEN}"

notifications=$(echo "user = \"$USER:$TOKEN\"" | curl -sf -K- https://api.github.com/notifications | jq ".[].unread" | grep -c true)

echo "%{T3} $notifications"

