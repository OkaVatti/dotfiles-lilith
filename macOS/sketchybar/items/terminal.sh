#!/bin/bash

terminal=(
    icon="Lilith"
    icon.color=$ACCENT_COLOR
    icon.font="PT Serif:Regular:15.0"
    icon.padding_right=8
    icon.y_offset=0
    padding_right=10
    padding_left=8
    click_script='open -a "iTerm"'
)

left_bracket=(
  background.color=$PRIMARY_1
  background.corner_radius=6
  background.border_width=2
  background.border_color=$PRIMARY_1
  background.height=24
)

space_bracket=(
  background.color=$TRANSPARENT_ACCENT
  background.corner_radius=6
  background.height=28
  background.y_offset=2
)

sketchybar --add item terminal left \
           --set terminal "${terminal[@]}"

sketchybar --add bracket left_bracket apple.logo mail space terminal \
           --set left_bracket "${left_bracket[@]}"

sketchybar --add bracket space_bracket spaces_1.code spaces_1.tex spaces_1.web spaces_1.mus spaces_1.mrk space \
           --set space_bracket "${space_bracket[@]}"

sketchybar --add bracket space_bracket spaces_2.code spaces_2.tex spaces_2.web spaces_2.mus spaces_1.mrk space \
           --set space_bracket "${space_bracket[@]}"