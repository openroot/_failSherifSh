#!/bin/bash
# Name: _math.sh
# Purpose: [ module ] modules bash script
# ---------------------------------------

# region function

function fs.samplefunction () {
	local operand1=100.12
	local operand2=3
	local scale=3
	local result=$(math.arith $(math.arith $operand1 '*' $operand2 $scale) '/' 20 3)
	echo "say sample ~math arithmetic operation :: ($operand1 * $operand2) / 20 = $result"
}

function fs.currentdatetime () {
	echo "current date time: `fs.datetime`"
}

# region end