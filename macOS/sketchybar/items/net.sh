sketchybar --add item  network.up right                            \
           --set       network.up script="$PLUGIN_DIR/net.sh"      \
                                update_freq=1                      \
                                padding_left=2                     \
                                padding_right=2                    \
                                background.border_width=0          \
                                background.height=24               \
                                icon=⇡                             \
                                icon.padding_right=4               \
                                icon.color=$YELLOW                 \
                                label.color=$YELLOW                \
                                label.font="$FONT:Bold:11.0"       \
                                                                   \
           --add item  network.down right                          \
           --set       network.down script="$PLUGIN_DIR/net.sh"    \
                                update_freq=1                      \
                                padding_left=18                    \
                                padding_right=2                    \
                                background.border_width=0          \
                                background.height=24               \
                                icon=⇣                             \
                                icon.padding_right=4               \
                                icon.color=$GREEN                  \
                                label.color=$GREEN                 \
                                label.font.size=10                 \
                                label.font="$FONT:Bold:11.0"       \