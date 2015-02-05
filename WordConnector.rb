require 'pry'
require 'active_support'
require 'active_support/core_ext/array/conversions'

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

  # Public: #connect
  #
  # Converts an array into a string list of its contents.
  #
  # Parameters: None.
  #
  # Returns: 
  # @array, formatted.
  #
  # State Changes: None
  
  def connect
    @array.to_sentence
  end
  
  #   def connect
  #   format_string = @array.pop
  #   if @array.length > 1
  #     format_string.prepend(", and ")
  #   else
  #     format_string.prepend(" and ")
  #   end #if
  #   until @array.length == 1
  #     format_string.prepend(", #{@array.pop}")
  #   end #until
  #   format_string.prepend("#{@array.pop}")
  #   format_string
  # end #method
  
end #class

# binding.pry