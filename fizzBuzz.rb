(1..100).each do |i|
  if i%15 == 0
    puts "Fizzbuzz"
  elsif i%5 == 0
    puts "buzz"
  elsif i%3 == 0
    puts "Fizz"
  else
    puts i
  end
end
