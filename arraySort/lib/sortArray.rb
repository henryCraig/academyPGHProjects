class ArraySorter
  def sortArray(arrayToSort)

    if arrayToSort.is_a?(Array) != true
      return "An array instead pls"
    end


    sorted = false
    while sorted == false
      sorted = true

      (0..arrayToSort.length-2).each do |num|

        if arrayToSort[num] > arrayToSort[num+1]
          tempVar = arrayToSort[num]
          arrayToSort[num] = arrayToSort[num+1]
          arrayToSort[num+1] = tempVar
          sorted = false
        end
      end
    end #End of while

    return arrayToSort

  end #End of sortArray()
end #End of class
