#!/bin/bash
cd ~/Pictures
scrot -s '%Y-%m-%d_$wx$h_scrot.png' -e 'mv $f ~/Pictures/screenshots/ | xclip -selection clipboard -t image/png -i ~/Pictures/screenshots/$n'
exit

