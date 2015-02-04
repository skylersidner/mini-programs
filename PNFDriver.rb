require 'pry'
require_relative 'PhoneNumberFormatter'



puts "Welcome to the Phone Number Formatter!"
puts "With this tool, we can take any 10-digit phone number and make it prettier."
puts "Would you like to like to input your own number, or use the default?"
puts "1. Input my own."
puts "2. \'1234567890\' (Default)"

choice = gets.chomp.to_i

num = 0
if choice == 1
  puts "Give me a 10-digit number: "
  num = gets.chomp.to_i
else
  num = 1234567890
end

pnf = PhoneNumberFormatter.new(num)

puts "If we format #{num}, there are two options..."
puts "1. xxx-xxx-xxxx"
puts "2. (xxx) xxx-xxxx"

choice = gets.chomp.to_i

if choice == 1
  puts "The formatted version is #{pnf.add_dashes}."
else
  puts "The formatted version is #{pnf.area_code_dashes}."
end