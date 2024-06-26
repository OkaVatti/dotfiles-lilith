#!/bin/bash

space_dot=(
  icon=􀀁
  icon.color=$TRANSPARENT_ACCENT
  icon.font="$FONT:Black:6.0"
  icon.padding_left=10
  icon.padding_right=10
  icon.y_offset=0
)

# Left
sketchybar --add   space          space_template left                \
           --set   space_template label.drawing=off                  \
                                  drawing=off                        \
                                  updates=on                         \
                                  associated_display=1               \
                                  label.font="$FONT:Black:13.0"      \
                                  icon.font="$FONT:Bold:17.0"        \
                                  script="$PLUGIN_DIR/space.sh"      \
                                  icon.padding_right=6               \
                                  icon.padding_left=2                \
                                  background.padding_left=2          \
                                  background.padding_right=2         \
                                  icon.background.height=2           \
                                  icon.background.y_offset=-13       \
                                  click_script="$SPACE_CLICK_SCRIPT" \
                                                                     \
           --clone spaces_1.label label_template                     \
           --set   spaces_1.label label=spc                          \
                                  label.width=50                     \
                                  label.align=center                 \
                                  associated_display=1               \
                                  position=left                      \
                                  drawing=on                         \
                                                                     \
           --clone spaces_1.code  space_template                     \
           --set   spaces_1.code  associated_space=1                 \
                                  icon.padding_left=6                \
                                  icon.font="Hack Nerd Font:Regular:16.0" \
                                  drawing=on                         \
                                                                     \
           --clone spaces_1.tex   space_template                     \
           --set   spaces_1.tex   associated_space=2                 \
                                  icon.padding_left=4                \
                                  icon.font="$FONT:Regular:13:0"     \
                                  drawing=on                         \
                                                                     \
           --clone spaces_1.web   space_template                     \
           --set   spaces_1.web   associated_space=3                 \
                                  icon.padding_left=4                \
                                  icon.font="$FONT:Bold:12:0"        \
                                  drawing=on                         \
                                                                     \
           --clone spaces_1.mus   space_template                     \
           --set   spaces_1.mus   associated_space=4                 \
                                  icon.padding_left=4                \
                                  icon.font="$FONT:Bold:12:0"        \
                                  drawing=on                         \
                                                                     \
           --clone spaces_1.mrk   space_template                     \
           --set   spaces_1.mrk   associated_space=5                 \
                                  icon.padding_left=4                \
                                  icon.font="$FONT:Bold:12:0"        \
                                  drawing=on                         \

# Right
sketchybar --add   space          space_template left                \
           --set   space_template label.drawing=off                  \
                                  drawing=off                        \
                                  updates=on                         \
                                  associated_display=2               \
                                  label.font="$FONT:Black:13.0"      \
                                  icon.font="$FONT:Bold:17.0"        \
                                  script="$PLUGIN_DIR/space.sh"      \
                                  icon.padding_right=6               \
                                  icon.padding_left=2                \
                                  background.padding_left=2          \
                                  background.padding_right=2         \
                                  icon.background.height=2           \
                                  icon.background.y_offset=-13       \
                                  click_script="$SPACE_CLICK_SCRIPT" \
                                                                     \
           --clone spaces_2.label label_template                     \
           --set   spaces_2.label label=spc2                         \
                                  label.width=55                     \
                                  label.align=center                 \
                                  associated_display=2               \
                                  position=left                      \
                                  drawing=on                         \
                                                                     \
           --clone spaces_2.code  space_template                     \
           --set   spaces_2.code  associated_space=6                 \
                                  icon.padding_left=4                \
                                  icon.font="Hack Nerd Font:Regular:16.0" \
                                  drawing=on                         \
                                                                     \
           --clone spaces_2.tex   space_template                     \
           --set   spaces_2.tex   associated_space=7                 \
                                  icon.padding_left=4                \
                                  icon.font="$FONT:Regular:13:0"     \
                                  drawing=on                         \
                                                                     \
           --clone spaces_2.web   space_template                     \
           --set   spaces_2.web   associated_space=8                 \
                                  icon.padding_left=4                \
                                  icon.font="$FONT:Bold:12:0"        \
                                  drawing=on                         \
                                                                     \
           --clone spaces_2.mus   space_template                     \
           --set   spaces_2.mus   associated_space=9                 \
                                  icon.padding_left=4                \
                                  icon.font="$FONT:Bold:12:0"        \
                                  drawing=on                         \
                                                                     \
           --clone spaces_2.mrk   space_template                     \
           --set   spaces_2.mrk   associated_space=10                \
                                  icon.padding_left=4                \
                                  icon.font="$FONT:Bold:12:0"        \
                                  drawing=on                         \
                                  
sketchybar --add item space_dot left \
           --set space_dot "${space_dot[@]}"