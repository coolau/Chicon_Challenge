=begin
Name: Peter Au
Date: April 8, 2014
Class: CoderVox Chicon
Instructor: Joe McCullough

Suppose you have a ceiling fan which has four fan speeds: 0, 1, 2, 3. The
speeds are changed by pulling a chain, which advances the fan speed by one.
Pulling the chain when the fan is on 0 advances the fan to 1. Similarly, 1
advances to 2, 2 advances to 3, and 3 advances back to 0. Suppose the
fan is currently on 1, and you compulsively pull the chain 373 times. What
speed will the fan end on?
=end


puts (373 % 4) + 1
