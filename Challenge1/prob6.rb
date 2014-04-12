
=begin
Name: Peter Au
Date: April 12, 2014
Class: CoderVox Chicon
Instructor: Joe McCullough

Create a simple calculator that prompts the user for degrees in Fahrenheit and
displays the temperature converted to Celsius.
=end

print "Enter Fahrenheit to be converted to Celsius: "
Fahen = gets.to_f
puts ((Fahen - 32) * 5/9).round(1).to_s + " Celsius"