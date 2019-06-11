class Autocompleter

  def initialize
    @autoCompleteList = []
    @completionReturn = []
  end

  def has_word?(inputWord)
    return @autoCompleteList.include? inputWord
  end

  def add_words(givenArray)

    givenArray.each do |word|
      @autoCompleteList << word
    end

  end

  def completions_for(wordChunk)
    @autoCompleteList.each do |word|

      if word.start_with?(wordChunk)
        @completionReturn << word
      end

    end
    @completionReturn
  end

end


# completer = Autocompleter.new
# completer.has_word?("marshmallow")
#
# completer.add_words(["one", "two", "three"])
# completer.has_word?("one")
# completer.has_word?("two")
# completer.has_word?("four")
