require 'pry'
# take the first number
# take modifier
# take the last number
# puts result
# error checking
#     user input and modifiers should be checked for proper input type
# the result should set first_number and allow for another modifier and last number so result continues to build until the user decides to clear
# - make + - * / work
# - make clear work

def add(first_num, second_num)
  @result = (first_num + second_num)
end

def subtract(first_num, second_num)
  @result = (first_num - second_num)
end

def multiply(first_num, second_num)
  @result = (first_num * second_num)
end

def divide(first_num, second_num)
  @result = (first_num / second_num)
end

def print_result(first_num, modifier, second_num)
  puts "-----------------------------------------"
  puts "Calculating..."
  puts "The Result of #{first_num} #{modifier} #{second_num} is #{@result}\n"
  puts "-----------------------------------------"
end

def math(first_num,second_num, modifier)
  case modifier
  when "*"
    multiply(first_num, second_num) 
  when "/"
    divide(first_num, second_num) 
  when "+"
    add(first_num, second_num)
  when "-"
    subtract(first_num, second_num)
  else
    puts "Operator #{modifier} is not supported. I only support + - / * operators."
    quit
  end
end

def beginning
  puts "\nWhat is the first number? "
  first_num = gets.strip.to_f
  puts "What is the operator? "
  modifier = gets.strip
  puts "What is the second number? "
  second_num = gets.strip.to_f

  math(first_num, second_num, modifier)

  puts "-----------------------------------------"
  puts "Calculating..."
  puts "The Result of #{first_num} #{modifier} #{second_num} is #{@result}\n"
  puts "-----------------------------------------"
end

puts "\nWELCOME TO THE RUBY CALCULATOR"
beginning

while first_num = @result
  puts "continue by selecting another modifier or 'q' to quit or 'c' to clear"
  modifier = gets.chomp
  if modifier == "q"
    puts "Goodbye"
    exit
  elsif modifier == "*" || modifier == "/" ||modifier == "+" ||modifier == "-"
    puts "enter second number: "
    second_num = gets.strip.to_f
    math(first_num, second_num, modifier)
    print_result(first_num, modifier, second_num)
  elsif modifier == "c"
    beginning
  else
    puts "Invalid input"
  end
end
