=begin
Name: Peter Au
Date: April 8, 2014
Class: CoderVox Chicon
Instructor: Joe McCullough

A cryptographic hash function is a function intended to take sensitive
plaintext information, such as a user's password, and return an obfuscated and
theoretically irreversible representation of that plaintext information. This
representation of the plaintext is called the hash value. Web applications take
advantage of cryptographic hash functions by storing and comparing against the
hash value of user passwords. The following procedure occurs:
 
1. When the user first registers, apply the hash function to the plaintext
   password, and store the hash value in the database.
2. When the user attempts to sign in, compare the hash function of the
   password guess against the values stored in the database.
3. If the hash value of the password guess equals the value stored in the database,
   it can be assumed that the value entered in the login form was the original
   plaintext password.
 
 
By following this procedure, any attackers that somehow gain access to the
database will not be able to recover user passwords: Knowing the hash value is
not sufficient to give you the plaintext!
 
However, a weak hash function may be vulnerable to *collisions*. A collision
occurs when the result of hashing two different plaintext values results in the
same hash value. This means that an incorrect password guess could still result
in successful login. This is because only the hashed values of the original
password and the password guesses are compared, not the plaintext (remember, the
plaintext is not stored in the database)
 
Suppose you are a hacker, and you have gained access to both a web application's
database and the source code. You find a method called `hashit`, which appears
to be an extremely naive attempt at a custom cryptographic hash function
 
The following is a full program which demonstrates how to call the hashit method
you found to see the resulting hash values of plaintext password guesses:
 
    def hashit(plaintext)
        sum = 0
        plaintext.each_char do |c|
            sum += (c.ord)
        end
        return (sum % 255)*100
    end
 
    hash1 = hashit("password123")
    hash2 = hashit("password124")
    hash3 = hashit("pbssword124")
 
    puts hash1
    puts hash2
    puts hash3
 
Paste this program into a file, and observe the results.
 
You discover your greatest enemy has an account with this web application, and
their password hash value is 21900. Find a plaintext password that will grant a
successful login to your greatest enemy's account. (In cryptography, this is
known as a preimage attack.)
 
HINT: Observe the effects altering the values in the example has on the hash
value.	
=end

def hashit(plaintext)
        sum = 0
        plaintext.each_char do |c|
            sum += (c.ord)
        end
        return (sum % 255)*100
    end
 
    hash1 = hashit("(4c!+")
    hash2 = hashit("password124")
    hash3 = hashit("pbssword124")
 
    puts hash1
    puts hash2
    puts hash3


randNum = Random.new().rand(33..126)


print "Enter hash to crack: "
hashpass = (gets.to_i / 100)
if hashpass.between?(33, 126)
	puts "The password can be " + hashpass.chr
else
	begin
		num1 = Random.rand(33..126)
		num2 = Random.rand(33..126)
		num3 = Random.rand(33..126)
		num4 = Random.rand(33..126)
		num5 = Random.rand(33..126)
		print num1.chr, num2.chr, num3.chr, num4.chr, num5.chr
	 	puts ""
		randNum = (num1 + num2 + num3 + num4 + num5) % 255
	end while randNum != hashpass
	puts "The password can be " + num1.chr + num2.chr + num3.chr + num4.chr + num5.chr 
end
#puts hashpass
