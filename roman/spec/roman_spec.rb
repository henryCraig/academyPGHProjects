require 'romanNumerals'


describe RomanConverter do
  describe ".convert" do


    #This works, its just that you cannot loop through the .to eql Currently that is
    #I guess I could do if statements in the test itself, which is odd
    #This definitely just feels like more code

    # (1..2).each do |i|
    #   it "if given #{i} will return I" do
    #     converter = RomanConverter.new
    #     answer = converter.convert(i)
    #     expect(answer).to eql("I")
    #   end
    # end



    it "if given 1 will return I" do
      converter = RomanConverter.new
      answer = converter.convert(1)
      expect(answer).to eql("I")
    end

    # it "if given 2 will return II" do
    #   converter = RomanConverter.new
    #   answer = converter.convert(2)
    #   expect(answer).to eql("II")
    # end
    #
    # it "if given 5 will return V" do
    #   converter = RomanConverter.new
    #   answer = converter.convert(5)
    #   expect(answer).to eql("V")
    # end
    #
    # it "if given 4 will return IV" do
    #   converter = RomanConverter.new
    #   answer = converter.convert(4)
    #   expect(answer).to eql("IV")
    # end
    #
    # it "if given 7 will return IV" do
    #   converter = RomanConverter.new
    #   answer = converter.convert(7)
    #   expect(answer).to eql("VII")
    # end

  end
end
