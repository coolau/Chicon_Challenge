=begin
Name: Peter Au
Date: April 12, 2014
Class: CoderVox Chicon
Instructor: Joe McCullough

Create a program that initially assigns x=5 and y=10. Using variables only, swap
the values of x and y, and then print their new values.
=end

x = 5
y = 10 
x, y = y, x    #Parallel Assignment
puts "x: #{x}, y: #{y}"