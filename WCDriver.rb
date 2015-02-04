require 'pry'
require_relative 'WordConnector'

puts "Welcome to the Word Connector!"
puts "This program takes an array of strings and formats them into something more readable."
puts "Which array would you like to use?"
puts "1. Mystery list!"
puts "2. [\"Blue\", \"Red\", \"Green\"]"
puts "3. [\"Blue\", \"Green\"]"

choice = gets.chomp.to_i

things = Array.new
if choice == 1
  things = ["Dogs", "Cats", "Rats", "Parakeets", "Arctic Terns", "Whale-Sharks", "Sharknados"]
elsif choice == 2
  things = ["Blue", "Red", "Green"]
else
  things = ["Blue", "Green"]
end

wc = WordConnector.new(things)
puts "If we format #{things}, it will look much nicer: "
puts wc.connect