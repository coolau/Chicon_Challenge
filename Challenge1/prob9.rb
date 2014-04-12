=begin
Name: Peter Au
Date: April 12, 2014
Class: CoderVox Chicon
Instructor: Joe McCullough

Copy and paste the following ruby program into a file, and run it

    def is_even?(x)
        if (x % 2 == 0)
            return true
        else
            return false
        end
    end

    def assert(expected, given)
        raise "is_even method is incorrect" unless expected == given
    end

    assert(true, is_even?(6))
    assert(false, is_even?(5))
    assert(false, is_even?(9))
    assert(true, is_even?(2))
    assert(false, is_even?(1))

    puts "is_even method works correctly!"

The output of the program should be

    is_even method works correctly!

As indicated by the name of the method, is_even? returns boolean true if the
number x is even, and returns boolean false if the number is not even.
However, the is_even? method can be written much more concisely. Rewrite the
is_even? method so the method body (everything in between the `def` and the
`end` statements) consists of a single return statement. If your method is
correct, you will see the following upon running it:

    is_even method works correctly!

If your method is incorrect, you will see a message resembling the following:

    iseven.rb:2:in `assert': is_even function is incorrect (RuntimeError)
            from iseven.rb:15:in `<main>'

=end

def is_even?(x)
    return (x % 2 == 0) 
end

def assert(expected, given)
    raise "is_even method is incorrect" unless expected == given
rescue Exception => e
	puts e.message
else
	puts "is_even method works correctly!"
end

assert(true, is_even?(6))
assert(false, is_even?(5)) 
assert(false, is_even?(9)) 
assert(true, is_even?(2))
assert(false, is_even?(1)) 

#puts "is_even method works correctly!"