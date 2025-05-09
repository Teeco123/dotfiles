#!/bin/bash

# Wait for Yabai to start
sleep 2

# Create spaces if needed
for i in {1..3}; do
  yabai -m space --create
done

# Label spaces
yabai -m space 1 --label browser
yabai -m space 2 --label code
yabai -m space 3 --label imessage

# Launch apps
open -a "Safari"
open -a "WezTerm"
open -a "Messages"

sleep 3  # Allow apps to launch

# Move apps to labeled spaces
yabai -m window --app "Safari" --space browser
yabai -m window --app "WezTerm" --space code
yabai -m window --app "Messages" --space imessage
