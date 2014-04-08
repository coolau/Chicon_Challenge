=begin
Name: Peter Au
Date: April 8, 2014
Class: CoderVox Chicon
Instructor: Joe McCullough

Create a program that prompts the user for the following information:
 
    * name
    * age
    * email address
    * shipping address
    * city
    * state
    * zip code
 
Store these values in appropriately named variables. Use string interpolation to
display these values back to the user. The output should appear similar to the
following:
 
    ===============================
    User information
    ===============================
 
    Name: Joseph McCullough
    Age: 22
    Email Address: joequery@countermail.com
    Address: 1234 Some Street
    City: Austin
    State: TX
    Zip Code: 78705
=end

print "Name: "
name = gets
print "Age: "
age = gets
print "Email Address: "
email = gets
print "Shipping Address: "
address = gets
print "City: "
city = gets
print "State: "
state = gets
print "Zip Code: "
zip = gets

puts "=============================="
puts "User Information"
puts "==============================\n"

puts "Name: #{name}"
puts "Age: #{age}"
puts "Email Address: #{email}"
puts "Address: #{address}"
puts "City: #{city}"
puts "State: #{state}"
puts "Zip Code: #{zip}"



