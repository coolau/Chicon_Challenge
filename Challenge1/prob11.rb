=begin
Name: Peter Au
Date: April 12, 2014
Class: CoderVox Chicon
Instructor: Joe McCullough

FizzBuzz is a classic technical interview problem. Complete the exercise as
stated below:

> "Write a program that writes the numbers from 1 to 100 to a file. But for
multiples of three print "Fizz" instead of the number and for the multiples of
five print "Buzz" For numbers which are multiples of both three and five print
"FizzBuzz"
=end

file_name = "prob11.txt"

begin
	file = File.open(file_name, "w")
	if file
		puts "File write successfully"
	end
rescue
	file = STDIN
end

(1..100).each do |n|
	if (n % 3) == 0 and (n % 5) == 0
		file.print "FizzBuzz "
	elsif (n % 5) == 0
		file.print "Buzz "
	elsif (n % 3) == 0 
		file.print "Fizz "
	else
		file.print "#{n} "
	end
end

file.close