=begin
Name: Peter Au
Date: April 8, 2014
Class: CoderVox Chicon
Instructor: Joe McCullough


The following code below generates a random decimal number between 0 and 1, and
stores that value in the variable `rnd_float`.
 
    rnd_float = Random.new().rand()
 
Observe that multiplying by powers of 10 moves the decimal point over
 
    irb(main):080:0> rnd_float
    => 0.21424471916314858
    irb(main):081:0> rnd_float * 10
    => 2.1424471916314856
    irb(main):082:0> rnd_float * 100
    => 21.424471916314857
    irb(main):083:0> rnd_float * 1000
    => 214.24471916314857
 
Use the examples above along with your knowledge of truncation and modular
arithmetic to create a dice program that prints out a random integer between 1
and 6.	
=end


puts rnd_float = ((Random.new().rand() * 10).to_i % 6) + 1 




