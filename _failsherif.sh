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
# region end


# region testing

	# attested start
	value1=100.12
	value2=3
	scale=3
	total=$(math.arith $(math.arith $value1 '*' $value2 $scale) '/' 20 3)
	echo ",say sample ~math arithmetic operation :: ($value1 * $value2) / 20 = $total"
	# attested end

	echo

# region end

# region input

read -rp "Please enter operation: " "operation"
echo

case $operation in

  1 | a | "A")
    echo "Option 1st entered."
	echo "\\\\TODO: execute operation 1st"
    ;;

  2 | b | "B")
    echo "Option 2nd entered."
	echo "\\\\TODO: execute operation 2nd"
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

# region end

# region execute
# region end

# region report
# region end

# region exit

echo
echo ",say enter any string to exit: "
read dump
echo "$dump"

# region end
