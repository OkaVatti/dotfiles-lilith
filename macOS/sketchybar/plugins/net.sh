#!/bin/bash

source "$CONFIG_DIR/colors.sh" # Loads all defined colors

function getBytes {
    ifstat -q -i en0 -n 1 1 | tail -n 1
}

BYTES=$(getBytes)

DOWN=$(echo "$BYTES" | awk '{print $1}')
UP=$(echo "$BYTES" | awk '{print $2}')

# Display exact amount of bytes per second
sketchybar --set network.down label="${DOWN} KB/s" \
           --set network.up   label="${UP} KB/s"

