require 'pry'

# Class: WordConnector
#
# Takes arrays and turns them into readable strings.
#
# Attributes:
# @array  - Array: An array of things to be listed.
#
# Public Methods:
# #connect

class WordConnector
  
  attr_accessor :array
  
  # Public: #initialize
  #
  # Creates a new WordConnector object.
  #
  # Parameters: 
  # the_array - Array: An array of strings to be listed.
  #
  # Returns: 
  # A WordConnector object.
  #
  # State Changes: 
  # @array becomes the passed array.
  
  def initialize(array)
    @array = array
  end

  # Public: #word_connector
  #
  # Converts an array into a list of its contents.
  #
  # Parameters: None.
  #
  # Returns: nil
  #
  # State Changes: None.

  def connect
    y = @array.pop
    final = (
      @array.each do |x|
      if @array.length > 1
        print "#{x}, "
      else
        print "#{x} "
      end #if
    end #each
    print "and #{y}."
    )
    puts final
  end #method
  
end #class

binding.pry