#!/bin/bash
# Name: _failsherif.sh
# Purpose: failsherif bash script
# -------------------------------

# region welcome

echo "_failsherif"
echo "༂࿐~ +strange easy world"
echo

# region end

# region function

function math () {
	local value1=$1
	local operation=$2
	local value2=$3
	local scale=$4
	local output=$(bc -l <<< "scale=$scale; $value1 $operation $value2")
	echo "$output"
}

# region end


# region testing

	# attested start
	value1=100.12
	value2=3
	scale=3
	total=$(math $(math $value1 '*' $value2 $scale) '/' 20 3)
	echo "sample math operation :: ($value1 * $value2) / 20 = $total"
	# attested end

	# echo

# region end

# region input



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
