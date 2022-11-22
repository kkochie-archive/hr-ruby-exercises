=begin
String Methods

In this tutorial, we'll learn about the methods in String class that help us to search and replace portions of the string based on a text or pattern.

• String.include?(string) - returns true if str contains the given string or character.
  > "hello".include? "lo"
  #=> true
  > "hello".include? "ol"
  #=> false

• String.gsub(pattern, <hash|replacement>) - returns a new string with all the occurrences of the pattern substituted for the second argument. The pattern is typically a Regex, but a string can also be used.

  "hello".gsub(/[aeiou]/, '*')
  #=> "h*ll*"
  "hello".gsub(/([aeiou])/, '')
  #=> "hll"

Either method will depend upon the problem you are trying to solve, and the nature of input-output behavior you desire.

In this challenge, your task is to write the following methods:
• mask_article which appends strike tags around certain words in a text. The method takes 2 arguments: a string and an array of words. It then replaces all the instances of the words in the text with the modified version.

• A helper method strike, given on string, appends strike off HTML tags around it. The strike off HTML is <strike></strike>.

For example:
  > strike("Meow!") # => "<strike>Meow!</strike>"
  > strike("Foolan Barik") # => "<strike>Foolan Barik</strike>"
  > mask_article("Hello World! This is crap!", ["crap"])
  "Hello World! This is <strike>crap</strike>!"

Apply the helper method in completing your main method.
=end

def strike(str)
  "<strike>#{str}</strike>"
end

def mask_article(str, arr)
  arr.map do |word|
    str.gsub!(word, strike(word)) if str.includes? word
  end
  str
end
