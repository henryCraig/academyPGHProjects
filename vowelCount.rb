
def getCount(stringInput)
  vowelIter = 0

  stringInput.split('').each { |inputChar|
      puts inputChar
      if "aeiou".include? inputChar
         puts "String includes 'a'"
         vowelIter += 1
      end
  }

  return vowelIter
end


#Apparently you have to put your functions above your function calls
#Which is a little weird, I guess it reads it line by line
getCount("aabbaab")
