#def class
#create instance
#use class


class Contact
  attr_accessor :name
  attr_accessor :phoneNumber
  attr_accessor :dOB

  #adding my own aspect of the contact class


  def display
    puts "#{name} : #{phoneNumber} : #{dOB}"
  end
end

contact1 = Contact.new
contact1.name = "person arthur mcflorian"
contact1.phoneNumber = "412-999-9999"
contact1.dOB = "4/21/90"

puts "Contact is: #{contact1.display}"

















#space
