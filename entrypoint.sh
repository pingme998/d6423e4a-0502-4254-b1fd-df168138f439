#!/bin/bash
rclone version
rclone listremotes
#refreshing Rclone
wget $CONFIG_IN_URL -O '/.config/rclone/rclone.conf'
rclone version
rclone listremotes
curl '' >/index.html
rclone rcd --rc-serve --rc-addr=0.0.0.0:$PORT --rc-template=/index.html
