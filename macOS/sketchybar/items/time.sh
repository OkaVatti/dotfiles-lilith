#!/bin/bash

time=(
  script="$PLUGIN_DIR/time.sh"
  icon=􀐫
  icon.color=$ACCENT_COLOR
  icon.font="$FONT:Bold:12.0"
  icon.padding_left=8
  icon.padding_right=4
  icon.y_offset=0
  label.font="$FONT:Medium:13.0"
  label.padding_left=4
  label.padding_right=14
  label.y_offset=0
  label.font="PT Mono:Bold:13.0"
  label.color=$ACCENT_COLOR
  update_freq=1
)

time_dot=(
  icon=􀀁
  icon.color=$ACCENT_COLOR
  icon.font="$FONT:Bold:6.0"
  icon.padding_right=10
  icon.padding_left=10
  icon.y_offset=0
)

time_bracket=(
  background.color=$TRANSPARENT_ACCENT
  background.corner_radius=6
  background.y_offset=5
)

sketchybar --add item time right \
           --set time "${time[@]}" \
           --subscribe time system_woke \
           --add item time_icon right \
           --set time_icon "${time_icon[@]}"

sketchybar --add item time_dot right \
           --set time_dot "${time_dot[@]}"

sketchybar --add bracket time \
           --set time "${time_bracket[@]}"