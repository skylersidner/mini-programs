require 'pry'



class PhoneNumberFormatter
  
  def initialize(x)
    @number = x.to_s
  end

  def add_dashes
    @number.insert(3, "-")
    @number.insert(7, "-")
    puts @number
  end

  def area_code_dashes
    @number.insert(0, "(")
    @number.insert(4, ")")
    @number.insert(5, " ")
    @number.insert(9, "-")
    puts @number
  end

  def area_code_dashes_alt
    area_code = @number.byteslice(0, 3)
    prefix = @number.byteslice(3, 3)
    suffix = @number.byteslice(6, 4)

    puts "(#{area_code}) #{prefix}-#{suffix}"
  end

end #class

binding.pry