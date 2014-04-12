print "Enter Fahrenheit to be converted to Celsius: "
Fahen = gets.to_f
puts ((Fahen - 32) * 5/9).round(1).to_s + " Celsius"