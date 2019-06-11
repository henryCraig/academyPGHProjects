str = "( ( ( 3 / 3 ) * 2)  + 3 + (2* (9/3) ) )"

str = "( (1*2) + ( (2*4)/2 ) )"
while not str.nil?
    puts str = str.match(/\((.*)\)/).to_a.last
end # =>
