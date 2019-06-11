#This is a comment in Ruby

#I will try to build the initial gardenBox problem here I think
puts "hello!"
puts "This is another console writeline"
puts "aka another puts"

#gets "Is this thing on?"

#I guess this pound sign works as a note creator, and as syntactic sugar
puts "I will now count my chickens:"
puts "Hens #{25 + 30 / 6}"

cars = 100
space_in_a_car = 4.0
drivers = 30
puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."


#So apparently puts gives you a newLine with the print, but print just prints
#it doesnt give you the new line as well
print "How old are you? "
age = gets.chomp
puts "You said: #{age}"





#This will convert to an integer
#Unclear what happens when you try to break it though
#number = gets.chomp.to_i

fruits = ['apples', 'oranges', 'pears', 'apricots']
fruits.each do |fruit|
  puts "A fruit of type: #{fruit}"
end
