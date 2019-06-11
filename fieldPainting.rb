puts "What is the radius of the circle?"
radius = gets.chomp.to_i

circleArea = 3.14 * radius * radius
puts "The area of the circle is: #{circleArea}"


puts "Please choose a color: red, blue, green, yellow"
chosenColor = gets.chomp


if chosenColor == "red"
  cansNeeded = (circleArea / 100).ceil
  puts "Cans needed: #{cansNeeded} for a circle with radius #{radius}"
  puts "Cost: #{cansNeeded * 25.00}"
elsif chosenColor == "blue"
  cansNeeded = (circleArea / 120).ceil
  puts "Cans needed: #{(circleArea / 120).ceil} for a circle with radius #{radius}"
  puts "Cost: #{cansNeeded * 28.00}"
elsif chosenColor == "green"
  cansNeeded = (circleArea / 90).ceil
  puts "Cans needed: #{(circleArea / 90).ceil} for a circle with radius #{radius}"
  puts "Cost: #{cansNeeded * 33.00}"
elsif chosenColor == "yellow"
  cansNeeded = (circleArea / 70).ceil
  puts "Cans needed: #{(circleArea / 70).ceil} for a circle with radius #{radius}"
  puts "Cost: #{cansNeeded * 22.00}"
else
  puts "Not a valid color"
end

#if chosenColor.eql? "red"
