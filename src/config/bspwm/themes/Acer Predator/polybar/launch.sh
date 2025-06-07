#!/usr/bin/env bash

#####################################
#                                   #
#  @author      : 00xWolf           #
#    GitHub    : @mmsaeed509       #
#    Developer : Mahmoud Mohamed   #
#  﫥  Copyright : Exodia OS         #
#                                   #
#####################################

# Files and Directories #
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
CONFIG_FILE="$HOME/.config/bspwm/exodia.conf"
BAR=$(grep -Po 'polybar\s*=\s*\K.*' ${CONFIG_FILE})
POLYBAR_DIR="$HOME/.config/bspwm/themes/${BAR}/polybar"
SFILE="${POLYBAR_DIR}/system"
MONITORS=$(grep -Po 'multi-bar-monitors\s*=\s*\K.*' ${CONFIG_FILE})

# Get system variable values for various modules #
GET_VALUES() {

	CARD=$(light -L | grep 'backlight' | head -n1 | cut -d'/' -f3)
	BATTERY=$(upower -i `upower -e | grep 'BAT'` | grep 'native-path' | cut -d':' -f2 | tr -d '[:blank:]')
	ADAPTER=$(upower -i `upower -e | grep 'AC'` | grep 'native-path' | cut -d':' -f2 | tr -d '[:blank:]')
	INTERFACE=$(ip link | awk '/state UP/ {print $2}' | tr -d :)

}

# Write values to `system` file #
SET_VALUES() {

	if [[ "$ADAPTER" ]];
		
		then
			
			sed -i -e "s/adapter = .*/adapter = $ADAPTER/g" "${SFILE}"

	fi

	if [[ "$BATTERY" ]];
		
		then
			
			sed -i -e "s/battery = .*/battery = $BATTERY/g" "${SFILE}"

	fi

	if [[ "$CARD" ]];
		
		then
			
			sed -i -e "s/graphics_card = .*/graphics_card = $CARD/g" "${SFILE}"

	fi

	if [[ "$INTERFACE" ]];
		
		then
			
			sed -i -e "s/network_interface = .*/network_interface = $INTERFACE/g" "${SFILE}"

	fi

}

# Launch Polybar with the selected style ONLY in the primary display #
LAUNCH_SINGLE_BAR() {

	CARD=$(light -L | grep 'backlight' | head -n1 | cut -d'/' -f3)
	INTERFACE=$(ip link | awk '/state UP/ {print $2}' | tr -d :)

	if [[ -z "$CARD" ]];
		
		then
			
			sed -i -e 's/backlight/bna/g' "$DIR"/config

	elif [[ "$CARD" != *"intel_"* ]];
		
		then
			
			sed -i -e 's/backlight/brightness/g' "$DIR"/config

	fi

	# Close polybar #
	killall -q polybar

	# Wait until closing polybar #
	while pgrep -u $UID -x polybar >/dev/null;
		
		do
			
			sleep 1

	done

	# Launch polybar #
	polybar -q main -c   "$DIR"/config &
	polybar -q sec  -c   "$DIR"/config &

}

# Launch Polybar with the selected style in all displays #
LAUNCH_MULTI_BAR() {

	CARD=$(light -L | grep 'backlight' | head -n1 | cut -d'/' -f3)
	INTERFACE=$(ip link | awk '/state UP/ {print $2}' | tr -d :)

	if [[ -z "$CARD" ]];
		
		then
			
			sed -i -e 's/backlight/bna/g' "$DIR"/config

	elif [[ "$CARD" != *"intel_"* ]];
		
		then
			
			sed -i -e 's/backlight/brightness/g' "$DIR"/config

	fi

	# Close polybar #
	killall -q polybar

	# Wait until closing polybar #
	while pgrep -u $UID -x polybar >/dev/null;
		
		do
			
			sleep 1

	done

	# Launch polybar #
	for MON in $(polybar --list-monitors | cut -d":" -f1);
		
		do

			MONITOR=$MON polybar -q main -c   "$DIR"/config &
			MONITOR=$MON polybar -q sec  -c   "$DIR"/config &
	
	done

}

# Execute functions #
GET_VALUES
SET_VALUES

# Launch polybar #
if [[ $MONITORS == "true" ]];
	
	then
		
		LAUNCH_MULTI_BAR

else

	LAUNCH_SINGLE_BAR

fi
