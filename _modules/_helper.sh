#!/bin/bash
# Name: _helper.sh
# Purpose: [ module ] helper bash script
# --------------------------------------

# region function

fs_autooperation_auto=0 # default auto-operation is disabled
fs_autooperation_delayinsec=1 # default delay value in seconds(s)
fs_autooperation_freshscreen="y" # default value is not fresh screen

# function to configure auto-operation
function fs.autooperation () {
	if [[ $fs_autooperation_auto == 0 ]]; then 	# entering in auto-operation first time
		fs_autooperation_auto=1
		echo
		echo -e "\tEnter delay in second(s) for auto operation: "
		read fs_autooperation_delayinsec
		echo -e "\tEnter [any key] for fresh screen ;[n] for default screen: "
		read fs_autooperation_freshscreen
	fi
}

function fs.datetime () {
	local now=`date +"%d-%m-%Y %R:%S, %A"`
	echo "$now"
}

# region end