#!/bin/bash

# Help user find degF or degC based on their Conversion Selection. Use
# Case Statement and ensure that the inputs are within the Freezing Point (
# 0 °C / 32 °F ) and the Boiling Point of Water ( 100 °C / 212 °F )
# a. degF = (degC * 9/5) + 32
# b. degC = (degF – 32) * 5/9

echo "*** Converting between the different temperature scales ***"
echo "1. Convert Celsius temperature into Fahrenheit"
echo "2. Convert Fahrenheit temperatures into Celsius"
echo "Select your choice (1 or 2) : "
read choice

case $choice in
	1)
		echo "Enter temperature (C) : "
		read degC
		degF=$(( ($degC * (9/5) ) + 32))
		echo "$degC degree Celius = $degF degree Fah"
		;;
	2)
		echo "Enter temperature (F) : "
		read degF
		degC=$(( ($degF-32) * (5/9) ))
		echo "$degF degree Fah = $degC degree Celius"
		;;
	*)
		echo "Please select number between 1 or two"
		;;
esac
