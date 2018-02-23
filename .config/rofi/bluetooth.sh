#!/bin/bash
# manage bluetooth

ON="Turn On"
OFF="Turn Off"
# devices=$(hcitool scan | tail -n +2)

CMD=$(echo -e "$ON\\n$OFF" | rofi -dmenu -p "bluetooth: ")
case $CMD in
$ON)
	sudo systemctl start bluetooth
	sleep 1
	echo -e "power on\\nquit\\n" | bluetoothctl
	;;
$OFF)
	sudo systemctl stop bluetooth
	;;
esac
