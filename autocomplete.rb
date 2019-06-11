#Make autocomplete!
# Make a program where the user can type in a string and see all possible autocompletes for it. You will provide your own dictionary of words that are possible autocompletes; the user will provide the partial string.
# For example, if you have a dictionary that includes "car", "candy", and "city"
# and the user types in 'ca', you should return the possible completions: Did you mean?: "car" or "candy"?
# If the full word is in the dictionary (like 'car'), tell them you already know that word.
# If there are no possible completions (the user gives you 'dog'), tell them that.





def checkSame(givenInput, autoDict)
  (0...givenInput.length).each do |i|
    if givenInput[i] != autoDict[givenInput[0]][i]
      return false
    end
  end
  return true
end


autoDict = {
  "a" => "aardvark",
   "b" => "beluga",
   "c" => "candor",
   "d" => "delineate",
   "e" => "ephemeral",
   "f" => "freed",
   "g" => "gone",
   "h" => "honor",
   "i" => "indigo",
   "j" => "jaundiced",
   "k" => "kite",
   "l" => "litmus",
   "m" => "monarch",
   "n" => "nomenclature",
   "o" => "octagon",
   "p" => "polyhedron",
   "q" => "quark",
   "r" => "rorschach",
   "s" => "suture",
   "t" => "tuna",
   "u" => "uniform",
   "v" => "verify",
   "w" => "wonder",
   "x" => "xylophone",
   "y" => "yonder",
   "z" => "zamboni"
}

puts "Word chunk please" #plastics
givenInput = gets.chomp

if checkSame(givenInput, autoDict)
  puts "I have that word! Your trying to say #{autoDict[givenInput[0]]}!"
elsif
  puts "Sorry I don't know that word.  The word I do have is #{autoDict[givenInput[0]]}!"
end
