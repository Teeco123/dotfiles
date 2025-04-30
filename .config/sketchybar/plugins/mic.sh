#!/bin/bash

MIC_VOLUME=$(osascript -e 'input volume of (get volume settings)')

if [[ $MIC_VOLUME -eq 0 ]]; then
	sketchybar -m --set mic icon=
elif [[ $MIC_VOLUME -eq 100 ]]; then
	sketchybar -m --set mic icon= \
		icon.color=0xff00ff00
else
	osascript -e 'set volume input volume 100'
	sketchybar -m --set mic icon= \
		icon.color=0xff00ff00
fi
