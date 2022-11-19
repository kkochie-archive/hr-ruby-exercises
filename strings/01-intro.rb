=begin
  
Ruby provides 3 ways of including string literals into your source code.

Single quoted strings:
The easiest way of adding text is by surrounding it with single quote (apostrophe) symbols. However, characters like an apostrophe and a backslash within the string need to be escaped if they are present.
> 'Hello! Programmer. How\'s it going?'

Double quoted strings:
Double quoted strings are more flexible, and they allow special escape sequences, e.g.\t, \n, which don't work with single quoted strings. More importantly, they allow the embedding of arbitrary expressions. When a string is created, the expression in the string is evaluated, converted to a string and inserted into the text in place of the expression. This process is known as interpolation.
> "Hello! There is a tab \t here. Did you see?"
> "My name is Circle, and I love Pi. Pi is equal to #{Math::PI}"

Here documents:
This is helpful for putting large amounts of text without worrying about escape sequences or string evaluation. “Here documents” begin with <<-. These are followed immediately by an identifier or string that specifies the ending delimiter. (No space is allowed, to prevent ambiguity with the left-shift operator.)The text of the string literal begins on the next line and continues until the text of the delimiter appears on a line by itself. For example:
document = <<-HERE         # We begin with <<- followed by the ending delimiter HERE
This is a string literal.
It has two lines and abruptly ends with a newline...
HERE
(Example from The Ruby Programming Language)

In this introductory challenge, your task is to use each of the above three methods to return the text Hello World and others!

=end

def single_quote
  # single quote string here
    'Hello World and others!'
end

def double_quote
  # Double quote string here
    "Hello World and others!"
end

def here_doc
  # Here doc string here
    <<-HERE
        Hello World and others!
    HERE
end