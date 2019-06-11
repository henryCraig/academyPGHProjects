def translateToMorse()
  morseHash = {"a" => ".-", "b" => "-...", "c" => "-.-.", "d" => "-..", "e" => ".", "f" => "..-.", "g" => "--.",
  "h" => "....", "i" => "..", "j" => ".---", "k" => "-.-", "l" => ".-..", "m" => "--", "n" => "-.", "o" => "---",
  "p" => ".--.", "q" => "--.-", "r" => ".-.", "s" => "...", "t" => "-", "u" => "..-", "v" => "...-", "w" => ".--",
  "x" => "-..-", "y" => "-.--", "z" => "--..", }

  puts "Please input a string"
  givenString = gets.chomp

  givenString = givenString.downcase
  returnString = ""

  #Iterates over the string
  givenString.each_char do |char|
    if char.match(/[a-z]/)
      returnString << morseHash[char]
      returnString << "/"
    elsif char.match(/\s/)
      returnString << " |*| "
    end
  end

  return returnString
end


puts translateToMorse()
