#!/bin/bash
# Name: _rest.sh
# Purpose: [ service ] rest bash script
# -------------------------------------

# region function

# function to invoke rest api
fs_restapiinvoke_lastresult=""
function fs.restapiinvoke () {
	# entering past 1st time; printing the last result till current await request completed; this if segment only needed if fresh screen requested
	if ! [[ $fs_autooperation_freshscreen == "n" ]]; then
		if [[ $fs_restapiinvoke_lastresult != "" ]]; then
			clear
			echo "Response from server: "
			echo -e "$fs_restapiinvoke_lastresult"
			echo
		fi
	fi

	#result=`curl --silent GET --header "Accept: */*" "https://corona-virus-stats.herokuapp.com/api/v1/cases/general-stats"`
	#result=`curl -# GET --header "Accept: */*" "https://corona-virus-stats.herokuapp.com/api/v1/cases/general-stats"`
	result=`curl -X GET --header "Accept: */*" "https://corona-virus-stats.herokuapp.com/api/v1/cases/general-stats"`
	
	formattedoutput=$result"\n\n\t""date time = "`fs.datetime`

	# entering past 1st time; this if segment only needed if fresh screen requested
	if ! [[ $fs_autooperation_freshscreen == "n" ]]; then
		if [[ $fs_restapiinvoke_lastresult != "" ]]; then
			clear
		fi
	fi

	echo "Response from server: "
	echo -e $formattedoutput
	fs_restapiinvoke_lastresult=$formattedoutput
}

# region end