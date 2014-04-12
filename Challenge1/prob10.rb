=begin
Name: Peter Au
Date: April 12, 2014
Class: CoderVox Chicon
Instructor: Joe McCullough

### Definition: Prime number

A prime number is an integer > 1 that is only divisible by 1 and itself.
Examples include 2, 3, 5, 7, 11, 13

Prime numbers are the basis of public-key cryptography, a mechanism for
securely transporting information. The widely used RSA cryptosystem hinges
upon the fact that it is extremely time consuming to factor two large prime
numbers multiplied together. To demonstrate this, we will construct a method
`is_prime?(x)` which returns boolean true if the integer `x` is prime, and
boolean false otherwise.

Your algorithm for `is_prime?(x)` should generalize the following examples.

Suppose we want to know if the integer 5 is prime.

Step 1) Start from 2 (since 5 divisible by 1 does not disprove primality)  
Step 2) Does 2 divide 5 evenly? In other words, does 5/2 have no remainder? No  
Step 3) Does 3 divide 5 evenly? No  
Step 4) Does 4 divide 5 evenly? No  
Step 5) Since we have verified that all numbers between 2 and 4 do not divide
5 evenly, 5 must be a prime number.

Suppose we want to know if the integer 9 is prime.

Step 1) Start from 2 (since 9 divisible by 1 does not disprove primality)  
Step 2) Does 2 divide 9 evenly? No  
Step 3) Does 3 divide 9 evenly? Yes! 9/3 = 3 with no remainder.  
Step 4) Since 3 divides 9 evenly, we can conclude that 9 is not prime. There  
        is no need to loop over the remaining numbers.

Similar to challenge 8, paste the following into a new file. Your job is to
fill in the `is_prime?` method with your algorithm.

    def is_prime?(x)
        ##############
        # Edit here
        ##############
    end

    def assert(expected, given)
        raise "is_prime method is incorrect" unless expected == given
    end

    assert(true, is_prime?(2))
    assert(true, is_prime?(3))
    assert(true, is_prime?(421))
    assert(false, is_prime?(1099))
    assert(true, is_prime?(1549))
    assert(true, is_prime?(3391))
    assert(false, is_prime?(3549))

    # Some larger primes now
    assert(true, is_prime?(1046527))
    assert(true, is_prime?(16769023))

    puts "is_prime method works correctly!"

If your algorithm is correct, running the program will output

    is_prime method works correctly!

If your method is incorrect, you will see an error message similar to

    isprime.rb:2:in `assert': is_prime function is incorrect (RuntimeError)
            from isprime.rb:15:in `<main>'

### BONUS

To truly experience how long this primality test can take, time the
execution of your working program. On my computer, the program finished in 1.5
seconds. Now, copy the following into a new file and bring over your `is_prime?`
method. See how long it takes to run.

    def is_prime?(x)
        ##############
        # Edit here
        ##############
    end

    def assert(expected, given)
        raise "is_prime method is incorrect" unless expected == given
    end

    assert(true, is_prime?(1073676287))
    puts "is_prime method works correctly!"

On my computer, it took 1.5 minutes.  Recommended RSA keys are 2048 bits, which
comes out to 617 digits! Imagine how long it would take to pass a 617
digit number to our algorithm if a 10 digit number took 1.5 minutes! That's the
idea behind RSA - even computers, as fast as they are, cannot determine if there
is a number that divides such a large a number in a reasonable amount of time.

If you're up for overheating your computer, you're welcome to evaluate the primality
of 359334085968622831041960188598043661065388726959079837
=end

 def is_prime?(x)
    if x == 1 
        return true 
    else
        (2..x-1).each do |n|
            if (x % n) == 0
                return false
            end 
        end
        return true
    end
end

def assert(expected, given)
    raise "is_prime method is incorrect" unless expected == given
rescue Exception => e
    puts e.message
else
    puts "is_prime method works correctly!"
end

assert(true, is_prime?(2))
assert(true, is_prime?(3))
assert(true, is_prime?(421))
assert(false, is_prime?(1099))
assert(true, is_prime?(1549))
assert(true, is_prime?(3391))
assert(false, is_prime?(3549))

    # Some larger primes now
assert(true, is_prime?(1046527))
assert(true, is_prime?(16769023))


