#!/bin/sh

wifi=(
    icon.font="$FONT:Bold:13.0"
    icon.color=$TRANSPARENT_ACCENT
)

wifi_dot=(
  icon=􀀁
  icon.color=$TRANSPARENT_ACCENT
  icon.font="$FONT:Black:6.0"
  icon.padding_right=10
  icon.padding_left=10
  icon.y_offset=0
)

sketchybar --add item wifi right                                \
           --set wifi "${wifi[@]}"                               \
           --add item wificon right                               \
           --set wificon "${wifi_icon[@]}"                         \
           --set ip_address script="$PLUGIN_DIR/ip_addr.sh"         \
                                  update_freq=1                      \
                                  background.border_width=0          \
                                  background.corner_radius=6         \
                                  background.height=24               \
                                  icon.padding_left=14               \
                                  icon.padding_right=8               \
                                  icon.highlight=on                  \
                                  label.highlight=on                 \
                                  label.padding_right=14             \
                                  label.font="$FONT:Bold:13.0"       \
           --subscribe ip_address wifi_change                        \

sketchybar --add item wifi_dot right \
           --set wifi_dot "${wifi_dot[@]}"