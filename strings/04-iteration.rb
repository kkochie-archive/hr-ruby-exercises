=begin
Strings Iteration

In Ruby 1.8, single each method which allowed it to iterate over lines of data. Not so clean, tricky to work functionalities. With Ruby 1.9, each was removed from the String class and is no longer an Enumerable. Instead, have more explicit choices based on what we need to iterate - bytes, chars, lines or codepoints.

• each_byte iterates sequentially through the individual bytes that comprise a string
• each_char iterates the characters and is more efficient than [] operator or character indexing
• each_codepoint iterates over the ordinal values of characters in the string;
• each_line iterates the lines.

For example:
  > money = "¥1000"
  > money.each_byte {|x| p x} # first char represented by two bytes
  194
  165
  49
  48
  48
  48
  > money.each_char {|x| p x} # prints each character
  "¥"
  "1"
  "0"
  "0"
  "0"

Ruby 1.9 makes iteration easier to understand and implement. 

Challenge:
Write the method count_mutlibyte_char which takes a string as input and returns the number of multibyte characters (byte size > 1) in it.

For example:
  > count_multibyte_char('¥1000')
  1

=end

# If character has > 1 byte add to count. Return count.

def count_multibyte_char(str)
  str.each_char.count {|char| char.bytesize > 1}
end

# Alternate
def count_multibyte_char(str)
  str.each_char do |char|
    count += 1 if char.bytesize > 1
  end
  return count
end

