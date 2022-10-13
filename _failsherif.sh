#!/bin/bash
# Name: _failsherif.sh
# Purpose: failsherif bash script
# -------------------------------

# region source scripts

source ./_modules/_math.sh

# region end

# region welcome

echo "_failsherif"
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

read -rp "Please enter option for operation: " "operation"
echo "Entered option = $operation."
echo

# region end

# region execute

case $operation in

  1 | a | "A")
	fs.samplefunction
    ;;

  2 | b | "B")
	fs.codetestfunction
    ;;

  3 | c | "C")
    echo "Option 3rd entered."
	echo "\\\\TODO: execute operation 3rd"
    ;;

  *)
    echo "unknown option entered"
	echo "\\\\TODO: exit snapshot"
    ;;
esac
echo

# region end

# region report
# region end

# region exit

echo ",say enter any string to exit: "
read dump
echo "$dump"

# region end
