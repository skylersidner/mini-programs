require 'pry'

x = "1234567890"
y = 1234567890


x.insert(3, "-")
x.insert(7, "-")
puts x

x = y.to_s
x.insert(0, "(")
x.insert(4, ")")
x.insert(8, "-")
puts x

x = "1234567890"
area_code = x.byteslice(0, 3)
prefix = x.byteslice(3, 3)
suffix = x.byteslice(6, 4)
puts area_code
puts prefix
puts suffix

puts "(#{area_code}) #{prefix}-#{suffix}"
#binding.pry