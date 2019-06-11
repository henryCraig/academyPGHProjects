#Gets inputs from the user
puts "What cost?"
costAmount = gets.chomp.to_f
puts "What did you pay?"
amountPaid = gets.chomp.to_f

numTwenties = 0
numTens = 0
numFives = 0
numDollars = 0

numQuarters = 0
numDimes = 0
numNickels = 0
numPennies = 0

if amountPaid > costAmount
  difference = amountPaid - costAmount
  puts "Change due: #{difference.round(2)}"

  #Twenties
  while difference > 20
    difference -= 20
    numTwenties += 1
  end

  #Tens
  while difference > 10
    difference -= 10
    numTens += 1
  end

  #Fives
  while difference > 5
    difference -= 5
    numFives += 1
  end

  #Dollars
  while difference > 0.99
    difference -= 1
    numDollars += 1
  end

  #Quarters
  while difference > 0.25
    difference -= 0.25
    numQuarters += 1
  end

  #Dimes
  while difference > 0.10
    difference -= 0.10
    numDimes += 1
  end

  #Nickels
  while difference > 0.05
    difference -= 0.05
    numNickels += 1
  end

  #Pennies
  while difference > 0
    difference -= 0.01
    numPennies += 1
  end

  print "Twenties: #{numTwenties}, Tens: #{numTens}, Fives: #{numFives},
  Dollars: #{numDollars} , Quarters: #{numQuarters},
  Dimes: #{numDimes}, Nickels: #{numNickels} , Pennies: #{numPennies}"

else
  puts "\n Well pay more money then"
end




#// How much did it cost?
#// 3.43
#// How much did they pay?
#// 10
#// They get 6.57 in change
#// 1 five, 1 one, 2 quarters, 1 nickle, 2 pennies
