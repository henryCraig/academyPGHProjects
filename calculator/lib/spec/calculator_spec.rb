require 'calculator'

describe Calculator do
  describe ".calculate" do

    newCalc = Calculator.new

    it "given 1 get 1" do
      answer = newCalc.calculate("2 + 2")
      expect(answer).to eql(1)
    end



  end
end
