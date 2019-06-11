class RomanConverter
  def convert(number)

    roman_version = ""
    while (number >= 10)
        roman_version << "X"
        number = number - 10
    end
    if (number == 9)
        roman_version << "IX"
        number = number - 9
    end
    if (number >= 5)
        roman_version << "V"
        number = number - 5
    end
    if (number == 4)
        roman_version << "IV"
        number = number - 4
    end
    while (number > 0)
        roman_version << "I"
        number = number - 1
    end
    return roman_version

  end
end
