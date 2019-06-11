#alright so I think this is a problem that can be done with recursion
#I didnt get to enact recursion on the last issue, but this time I think I can head it off at the pass

#I think it just needs to find the smallest () each time, and then operate from there

#so whats that plan then
#understand how recursion works



#8 * 3
#24
equationVar = "((2+4) * ((2+3)/3))"
equationVar = equationVar.tr(' ', '')
#puts "What we are putsing: #{equationVar[/[ (.)] /]}"

#Successfully removed all empty space characters



equationArray = equationVar.split("")
puts "equationArray: #{equationArray}"

rightSplit = equationVar.split(")")
leftSplit = equationVar.split("(")

puts "rightSplit: #{rightSplit}"
puts "leftSplit: #{leftSplit}"




#New idea
#start from the exterior on the end and work our way in
#printing the array in reverse

#So lets write down what I want it to look like


#first it prints: (2+3)
#Then it prints:(2*(2+3))

(equationArray.length-1).downto(0) do |i|
  puts equationArray[i]
end



def sumEquation(equationString)
  puts equationString
end



#loop:
  #If char == "("
    #calculate string
  #elsif
    #recurse
  #else
    #calculate












#Space
