class Template

  def initialize
    @emptyArray = []
  end

  def generator(givenString)
    #puts givenString[/\[(.*?)\]/, 1]
    #givenString.slice! "[" #+ givenString[/\[(.*?)\]/, 1] + "]"
    #puts givenString[/\[(.*?)\]/, 1]


    #puts givenString.match(/this/)

     while givenString.include? "[" do
        #Code
        @emptyArray << givenString[/\[(.*?)\]/, 1]
        givenString.slice! "[" #+ givenString[/\[(.*?)\]/, 1] + "]"
     end


    #puts givenString[/\[(.*?)\]/, 1]

    #Alright so what I want to do here is to do the thing without the loop first
    #So I'll be repeating code initially, and then


    return @emptyArray
  end

  def sub_stuff(givenList)

  end

  def final

  end

end


#template = Template.new
#print(template.generator("this is [Moby Dick] which is a [book]"))
