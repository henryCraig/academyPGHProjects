print "Length of box: "
length = gets.chomp.to_i
print "Width of box: "
width = gets.chomp.to_i

area = length * width
perimeter = length * 2 + width * 2
puts "The area of the garden box is: #{area}"
puts "The perimeter of the box is: #{perimeter}"

#In this instance we are OK with it rounding down, we should need to
puts "The amount of carrots that will fit is: #{area}"
puts "The amount of corn that will fit is: #{area * 3 / 16}"
puts "The amount of beets that will fit is: #{area * 9 / 16}"
