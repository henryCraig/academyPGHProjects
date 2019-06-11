require 'sortArray'

describe ArraySorter do
  describe ".sortArray" do

    sorter = ArraySorter.new
    defaultReturnString = "An array instead pls"

    it "Should return the input you give it right now" do
      answer = sorter.sortArray([2,3])
      expect(answer).to eql([2,3])
    end

    it "Should return the input you give it right now" do
      answer = sorter.sortArray([3,2])
      expect(answer).to eql([2,3])
    end

    it "Should return the input you give it right now" do
      answer = sorter.sortArray([2,1])
      expect(answer).to_not eql([2,1])
    end

    it "Should return the input you give it right now" do
      answer = sorter.sortArray(4)
      expect(answer).to eql(defaultReturnString)
    end

    it "Should return the input you give it right now" do
      answer = sorter.sortArray([4,6,2,1,9,3,7])
      expect(answer).to eql([1,2,3,4,6,7,9])
    end


  end
end
