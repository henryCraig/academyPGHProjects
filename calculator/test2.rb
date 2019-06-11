equationVar = "2+3"
equationArray = equationVar.split("")

equationArray.each do |char|
  puts char
  if char.respond_to?(:to_i)
    num1 = char.to_i
end

equationArray.each do |char|
  puts char
  if char.respond_to?(:to_i)
    num1 = char.to_i
end
