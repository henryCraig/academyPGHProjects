messageSystem = []
input = "d"

until input == "c"
  puts "Would you like to \na) save message \nb) retrieve message \nc) quit"
  input = gets.chomp

  if input == "a"
    puts "Please type the message here"
    messageInput = gets.chomp
    messageSystem.push(messageInput)
  end

  if input == "b"
    puts "Length of the message array #{messageSystem.length}"
    if messageSystem.length > 0
      chosenMessage = -1

      until chosenMessage >=0 && chosenMessage < messageSystem.length
        puts "please Enter a number from 0 up to #{messageSystem.length-1}"
        chosenMessage = gets.chomp.to_i
      end

      puts messageSystem[chosenMessage]
      
    else
      puts "No messages here"

    end
  end
end
