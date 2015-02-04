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
  # Converts an array into a string list of its contents.
  #
  # Parameters: None.
  #
  # Returns: 
  # format_string
  #
  # State Changes: 
  # format_string becomes a correctly formatted output string.


  
  def connect
    format_string = @array.pop
    if @array.length > 1
      format_string.prepend(", and ")
    else
      format_string.prepend(" and ")
    end #if
    until @array.length == 1
      format_string.prepend(", #{@array.pop}")
    end #until
    format_string.prepend("#{@array.pop}")
    format_string
  end #method
  
end #class

# binding.pry