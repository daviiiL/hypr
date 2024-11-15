
#!/bin/bash

ags toggle osd

sleep 0.1

wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+ 

sleep 5

ags toggle osd
