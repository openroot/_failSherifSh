#!/bin/bash
# Name: _math.sh
# Purpose: [ module ] math bash script
# ------------------------------------

# region function

# param1 = operand first ;numeric
# param2 = arithmetic operation ;character
# param3 = operand second ;numeric
# param4 = scale (max numbers of decimal part) ;numeric
# return = result of arithmetic operation ;numeric
# sample usage 1: <var0> = $(arith $<var1> '<+|-|*|/|%>' $<var2> $<var3>)
function math.arith () {
	local value1=$1
	local operation=$2
	local value2=$3
	local scale=$4
	local result=`bc -l <<< "scale=$scale; $value1 $operation $value2"`
	echo "$result"
}

# region end