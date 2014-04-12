=begin
Name: Peter Au
Date: April 12, 2014
Class: CoderVox Chicon
Instructor: Joe McCullough

Create a program prompts for both a student's name and the grade they made on
a test. Letter grade scales for the class are as follows:

    90-100 is an A
    80-89 is a B
    70-79 is a C
    0-69 is an F

Have the program print out the student's name, their grade, and their letter
grade. Aside from the prompts, there should only be one line of code
containing a print statement - make use concatenation / interpolation.

The sentence should resemble the following:

    "Joseph scored 72, a C"
=end

print "Student name: "
name = gets.chomp

print "Grade: "
grade = gets.to_i

case grade
	when 90..100
		puts "#{name} scored #{grade}, a A"
	when 80..89
		puts "#{name} scored #{grade}, a B"
	when 70..79
		puts "#{name} scored #{grade}, a C"
	when 0..69
		puts "#{name} scored #{grade}, a F"
	else
		puts "Invalid Grade"
end