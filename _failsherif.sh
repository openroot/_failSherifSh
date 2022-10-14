#!/bin/bash
# Name: _failsherif.sh
# Purpose: failsherif bash script
# -------------------------------

# region source scripts

fs_const_dir=`dirname $0`
source ${fs_const_dir}/_modules/_math.sh
source ${fs_const_dir}/_services/_rest.sh

# region end

# region welcome

echo "_failsherif"
echo "༂࿐~ +strange easy world"
echo

# region end

# region function

fs_autooperation_auto=0 # default auto-operation is disabled
fs_autooperation_delayinsec=1 # default delay value in seconds(s)
fs_autooperation_freshscreen="y" # default value is not fresh screen
# function to configure auto-operation
function fs.autooperation () {
	if [[ $fs_autooperation_auto == 0 ]]; then 	# entering in auto-operation first time
		fs_autooperation_auto=1
		echo
		read -rp "Enter delay in second(s) for auto operation: " "fs_autooperation_delayinsec"
		read -rp "Enter [any key] for fresh screen ;[n] for default screen: " "fs_autooperation_freshscreen"
	fi
}

function fs.datetime () {
	local now=$(date +"%d-%m-%Y %R:%S, %A")
	echo "$now"
}

function fs.samplefunction () {
	local value1=100.12
	local value2=3
	local scale=3
	local total=$(math.arith $(math.arith $value1 '*' $value2 $scale) '/' 20 3)
	echo ",say sample ~math arithmetic operation :: ($value1 * $value2) / 20 = $total"
}

function fs.codetestfunction () {
	# attested start
	echo ",functional area an to test sh codes"
	# attested end
}

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

	#result=$(curl --silent GET --header "Accept: */*" "https://corona-virus-stats.herokuapp.com/api/v1/cases/general-stats")
	#result=$(curl -# GET --header "Accept: */*" "https://corona-virus-stats.herokuapp.com/api/v1/cases/general-stats")
	result=$(curl -X GET --header "Accept: */*" "https://corona-virus-stats.herokuapp.com/api/v1/cases/general-stats")
	formattedoutput="$result\n\ndate time = $(fs.datetime)"

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

# region input

echo "!press [n] anytime exit app"
echo

# region end

# region execute

while : ; do
	if [[ $fs_autooperation_auto == 0 ]]; then
		read -rp "Please enter option for operation [0|a|A/b|B/c|C/n|no]: " "operation"
		echo "Entered option = $operation."
		echo
	else
		sleep $fs_autooperation_delayinsec
		if ! [[ $fs_autooperation_freshscreen == "n" ]]; then
			clear
		fi
	fi

    case $operation in

	0)
		clear # clears the screen
	;;

	a)
		fs.samplefunction
	;;
	A)
		fs.samplefunction
		fs.autooperation
	;;

	b)
		fs.codetestfunction
	;;
	B)
		fs.codetestfunction
		fs.autooperation
	;;

	c)
		fs.restapiinvoke
	;;
	C)
		fs.restapiinvoke
		fs.autooperation
	;;

	n | "no")
		break # on selection exit the app
	;;

	*)
		echo "[unknown] option entered"
	;;
	esac
	echo

	# following code ; only & only if needed an extra ask for breaking the loop
	#read -rp "Want to repeat [any key/n]: " "cont"
    #[[ $cont != "n" ]] || break
done

# region end

# region report
# region end

# region exit

echo "App executed successfully."
exit

# region end
