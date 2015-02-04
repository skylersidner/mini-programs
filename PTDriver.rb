require 'pry'
require_relative 'ParagraphTruncator'

puts "Welcome to the Paragraph Truncator!"
puts "We take long paragraphs and make them much more manageable."
puts "Would you like to input your own, or use the default?"
puts "1. Input my own"
puts "2. (A lorem ipsum paragraph)"

choice = gets.chomp.to_i

if choice == 1
  puts "Type in your paragraph: "
  paragraph = gets.chomp.to_s
else
  paragraph = "Lorem ipsum dolor sit amet, culpa penatibus aliquam molestie sed, rhoncus erat justo ut vitae lectus ante, dui rutrum ea sit suscipit arcu suspendisse."
end

pt = ParagraphTruncator.new(paragraph)

puts "You chose: "
puts "#{paragraph}"
puts "This should probably be shortened to: \n#{pt.truncate}"
