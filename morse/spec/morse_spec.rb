require 'morseCode'


describe MorseConverter do
  describe ".convert" do


    it "if given a will return .-" do
      converter = MorseConverter.new
      answer = converter.convert("a")
      expect(answer).to eql(".-/")
    end

    it "if given hello will return ...././.-../.-../---/" do
      converter = MorseConverter.new
      answer = converter.convert("hello")
      expect(answer).to eql("...././.-../.-../---/")
    end


    #Things to try to break it
    it "if given an empty string will return 'input a string please' " do
      converter = MorseConverter.new
      answer = converter.convert("")
      expect(answer).to eql("input string please")
    end

    it "if given num will return inputStringPlease" do
      converter = MorseConverter.new
      answer = converter.convert(4)
      expect(answer).to eql("input string please")
    end

  end
end
