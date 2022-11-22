=begin
Methods - Introduction

A method is a group of several expressions (block) that can be referred with a name, can be passed some arguments (input) and are associated with one or more objects.

These methods, even though they appear like global functions, are instead private methods of a root Object class on which they are implicitly defined and invoked automatically.

So when you write:
  def hello_world
    'Eha! Ruby'
  end

  > hello_world
  'Eha! Ruby'

You are essentially adding a private method to Object class = 

  class Object
      private
      
      def hello_world2
        'Eha! Ruby'
      end
  end

  > hello_world2
  => 'Eha! Ruby'

This however, is not the focus of this challenge. Instead, it was just to show you the true object nature of Ruby, and we'll return to it again later during our challenges on classes.

In this challenge, write a method prime? that takes an argument and returns true or false depending on if the number is prime or not.

  > prime? 3
  true
  > prime? 17
  true
  > prime? 22
  false

Further Reading: These methods, unlike functions in other object oriented programming languages (e.g. Python) are not first-class citizens, because they cannot be passed to other methods as arguments, returned by other methods, or assigned to variables.

=end

# return true or false if a prime number. Remember 1 is not a prime number because not divisible by 2 different numbers.
# if only one array element and modulus 0 it is true
def prime?(num)
  (2..num).one?{|n| num % n == 0}
end

#Longer version
def prime?(num)
  ((2..num).select { |n| num % n == 0 }).size == 1 ? true  : false
end