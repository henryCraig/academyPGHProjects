# have a list of contacts -
# add to it
# display my contacts

#Because we remove the attr - we can stop access to the class from the outside world


class Contact
    # a function to display a contact
    def display
        puts "#{@name}: #{@phone_number}"
    end

    #this is our constructor method, its always called initialize in Ruby
    def initialize(name, number)
      @name = name
      @phone_number = number
    end

    # this is what attr_accesors do
    # def name
    #     @name
    # end
    # def name=(string)
    #     @name = string
    # end
end

contacts = []

#The constructor method is whats called when you call .new
#Also called initializer
#contact.new("Henry", 4564654654)

(1..3).each do |i|
    # create a contact and add it to the array

    puts "What is the number #{i} contact name?"
    name = gets.chomp
    puts "What is the number #{i} contact phone number?"
    phone_number = gets.chomp
    my_contact = Contact.new(name, phone_number)
    contacts << my_contact
end

puts "contacts: #{contacts}"

# now display all my contacts
puts "Here are your contacts:"
contacts.each do |c|
    c.display
end
