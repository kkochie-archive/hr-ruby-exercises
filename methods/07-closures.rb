=begin

Methods - Closures

Closure is a function/method that:

• Can be passed around like an object.
  It can be treated like a variable, which can be assigned to another variable, passed as an argument to a method.

• Remembers the value of variables no longer in scope.
  It remembers the values of all variables that were in scope when the function was defined. It is then able to access those variables when it is called even if they are in a different scope.

Example:
  def plus_1(y)
    x = 100
    y.call  #remembers the value of x = 1
  end

  x = 1
  y = -> { x + 1 }
  puts plus_1(y)  #2

In this example, the variable x, which is closed within the lambda y, remembers its values. Here, x remembers its values as 1.

Blocks, Procs and Lambdas are closures in Ruby.

Task:
You are givne a partially complete code. Your task is to fill in the blanks.

-> block_message_printer prints the message if the block exists.
-> proc_message_printer prints the message inside a Proc.
-> lambda_message_printer prints the message inside a Lambda.


** Helpful discussion:
This problem is essentially a lesson about scope. Here's a smaller example:
  def make_counter
    x = 0
    return lambda do
      x += 1
      return x
    end
  end

  c = make_counter()
  puts c.call() #=> prints "1"
  puts c.call() #=> prints "2"
  puts c.call() #=> prints "3"

In this example, the function make_counter returns a lambda (anonymous function) that simply counts up eery time you call it.

The key concept here is that the variable x in example was declared outside of the lamda. Yet, even after make_counter has been called, and x should be out of scope, the lambda still remembers it, and can make changes to it.

This is because when the lambda is created, we actually get the lambda and some information about the environment in which it was created. This package, of lambda + extra information, is called a "closure".

Here's another small example that gets us closer to the problem at hand:
  def make_counter
    x = 0
    return lambda do
      x += 1
      return x
    end
  end

  x = -999

  c = make_counter()
  puts c.call() #=> prints "1"
  puts c.call() #=> prints "2"
  puts c.call() #=> prints "3"

Even when I add another variable x outside the closure, it has no effect on the x inside the closure. Because it's separate scope.
=end

def block_message_printer
  message = "Welcome to Block Message Printer"
  if block_given?
      #_________
      yield
  end
puts "But in this function/method message is :: #{message}"
end

message = gets
block_message_printer { puts "This message remembers message :: #{message}" }

#####################################################################################

def proc_message_printer(my_proc)
  message = "Welcome to Proc Message Printer"
  #_________________________              #Call my_proc
  my_proc.call
  puts "But in this function/method message is :: #{message}"
end

my_proc = proc { puts "This message remembers message :: #{message}" }
proc_message_printer(my_proc)
    
######################################################################################    
    
def lambda_message_printer(my_lambda)
    message = "Welcome to Lambda Message Printer"
    #_________________________              #Call my_lambda
    my_lambda.call
    puts "But in this function/method message is :: #{message}"
end

my_lambda = -> { puts "This message remembers message :: #{message}" }
lambda_message_printer(my_lambda)    
    
######################################################################################