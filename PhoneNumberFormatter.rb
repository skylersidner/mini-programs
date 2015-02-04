require 'pry'

# Class: PhoneNumberFormatter
#
# Formats a number into a more readable string.
#
# Attributes:
# @number - Integer: A 10-digit number that represents an unformatted phone number.
#
# Public Methods:
# #add_dashes
# #area_code_dashes

class PhoneNumberFormatter
  
  # Public: #initialize
  #
  # Creates an instance of the PhoneNumberFormatter object.
  #
  # Parameters: 
  # @number - Integer: A 10-digit number to be formatted.
  #
  # Returns: 
  # An instance of PhoneNumberFormatter
  #
  # State Changes: 
  # @number becomes a string of the 10-digit number.
  
  def initialize(x)
    @number = x.to_s
  end

  # Public: #add_dashes
  #
  # Adds dashes to the number string to designate area code, prefix, and suffix.
  #
  # Parameters: None
  #
  # Returns: 
  # @number.
  #
  # State Changes: 
  # @number gains some formatting characters.
  
  def add_dashes
    @number.insert(3, "-")
    @number.insert(7, "-")
    @number
  end

  # Public: #area_code_dashes
  #
  # Puts parenthesis around the area code and a dash between the prefix and suffix of
  # the number.
  #
  # Parameters: None
  #
  # Returns: 
  # @number
  #
  # State Changes: 
  # @number gains some formatting characters.
  
  def area_code_dashes
    @number.insert(0, "(")
    @number.insert(4, ")")
    @number.insert(5, " ")
    @number.insert(9, "-")
    @number
  end


end #class

# binding.pry