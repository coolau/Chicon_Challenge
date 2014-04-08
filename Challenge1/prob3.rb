=begin
Name: Peter Au
Date: April 8, 2014
Class: CoderVox Chicon
Instructor: Joe McCullough

Copy your solution to problem 2 to a new file. Alter the program to prompt the
user for the starting speed of our 4-speed fan, and for the number of times the
chain will be pulled. 
=end

print "Starting Speed: "
speed = gets.to_i

print "Number of time pull: "
pull = gets.to_i

puts "The speed of the fan will end on " + ((pull % 4) + speed).to_s
