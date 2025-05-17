#!/bin/sh

~/.wppr &
xcompmgr -c &
~/.dwm_status.sh &
exec dwm
