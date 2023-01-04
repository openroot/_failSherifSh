#!/bin/bash
# Name: _failsherif.sh
# Purpose: [ module ] _failsherif bash script
# -------------------------------------------

# region script requires

fs_const_dir=`dirname $0`
source ${fs_const_dir}/_modules/_modules.sh
source ${fs_const_dir}/_modules/_helper.sh
source ${fs_const_dir}/_modules/_math.sh
source ${fs_const_dir}/_services/_rest.sh

# region end

# region welcome

echo "_failsherif"
echo "༂࿐~ +strange easy world"
echo

# region end

# region input

echo -e "\t!press [n] anytime exit app"
echo

# region end

# region execute

while : ; do
	if [[ $fs_autooperation_auto == 0 ]]; then
		echo -e "\tPlease enter option for operation [[ 0 | a/A | b/B | c/C | n/no ]]: "
		read operation
		echo -e "\tEntered option = $operation."
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
		fs.currentdatetime
	;;
	B)
		fs.currentdatetime
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
