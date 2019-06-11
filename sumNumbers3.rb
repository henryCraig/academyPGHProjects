def get_sum(a,b)
  iter = 0
  (([a,b].min)..([a,b].max)).each do |i|
    iter += i
  end

  puts "greaterNum: #{greaterNum} LesserNum: #{lesserNum}"
  puts "returned num: #{iter}"

  return iter
end #End of get_sum


get_sum(3, 1)
