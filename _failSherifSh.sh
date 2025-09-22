#!/bin/bash
# Name: _failSherifSh.sh
# Purpose: failSherifSh bash script
# ---------------------------------

# region source scripts

source ./_modules/_math.sh

# region end

# region welcome

echo "_failSherifSh"
echo "༂࿐~ +strange easy world"
echo

# region end

# region function

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

# region end

# region input

echo "!press [n] anytime exit app"
echo

# region end

# region execute

while : ; do
	read -rp "Please enter option for operation [1|a/2|b/3|c/n|N]: " "operation"
	echo "Entered option = $operation."
	echo

    case $operation in

	1 | a | "A")
		fs.samplefunction
	;;

	2 | b | "B")
		fs.codetestfunction
	;;

	3 | c | "C")
		echo "Option 3rd entered."
	;;

	n | "N")
		# on selection exit the app
		break
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

# region end
