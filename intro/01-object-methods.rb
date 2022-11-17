=begin
Each object in Ruby may have methods associated with it. To demonstrate this, we want you to print whether a number is even or odd. A number has an even? method associated with it, which returns true or false based on the parity of the number.

Assuming a variable number is already defined, check whether a given number is even or not.

Hint:
return number.even?
or
number.even?

Input Format:
The first line of input contains an integer n. The next n contains one integer in each line.

Output Format:
The output is handled by the code written in the editor.
=end

number.even?

def odd_or_even(number)

  number.even?

end

(0...gets.to_i).each do |i|
    puts odd_or_even(gets.to_i)
end
