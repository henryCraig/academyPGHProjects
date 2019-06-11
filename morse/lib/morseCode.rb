class MorseConverter

  def convert(givenString)

    if givenString.is_a?(Integer)
      return "input string please"
    end
    if (givenString.length < 1)
      return "input string please"
    end


    morseHash = {"a" => ".-", "b" => "-...", "c" => "-.-.", "d" => "-..", "e" => ".", "f" => "..-.", "g" => "--.",
    "h" => "....", "i" => "..", "j" => ".---", "k" => "-.-", "l" => ".-..", "m" => "--", "n" => "-.", "o" => "---",
    "p" => ".--.", "q" => "--.-", "r" => ".-.", "s" => "...", "t" => "-", "u" => "..-", "v" => "...-", "w" => ".--",
    "x" => "-..-", "y" => "-.--", "z" => "--..", }


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


    #return ".-"

  end
end
