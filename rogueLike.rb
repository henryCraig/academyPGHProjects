require "io/console"

grid = Array.new(10) {Array.new(10,".")}  #Creates the grid

def outputGrid(grid)
  #Writes the grid to the screen
  (0...grid.length).each do |i|
    (0...grid.length).each do |j|
      print grid[i][j]
    end
    puts ""
  end
end

def movementBehavior(grid, currentX, currentY)
  grid[currentY][currentX] = "."
  currentX -= 1
  if currentX < 0
    currentX += grid.length
  end
  if grid[currentY][currentX] == 'T'
    treasureAmount += 1
  end
  if grid[currentY][currentX] == 'W'
    currentX += 1
    outputMessage = "You hit a wall going left!"
  end
  if grid[currentY][currentX] == '0'
    hitTheLights = TRUE
    outputMessage = "You hit the lights!"
  end
end



currentX = grid.length-1
currentY = grid.length-1

grid[3][4] = "T"
grid[0][1] = "T"
grid[5][2] = "T"
treasureAmount = 0

grid[8][8] = "W"

grid[0][0] = "0"

outputMessage = ""


hitTheLights = FALSE





buttonChoice = "l"                      #Sets up the while loop for the game
while buttonChoice != "q"
  puts "\e[H\e[2J"

  grid[currentY][currentX] = "#"        #Creates the player character

  if hitTheLights == FALSE
    outputGrid(grid)
  end

  puts outputMessage



  #Writing treasure amount
  puts "Treasure Trove: #{treasureAmount}"


  buttonChoice = STDIN.getch
      case buttonChoice
          when "a"
              grid[currentY][currentX] = "."
              currentX -= 1
              if currentX < 0
                currentX += grid.length
              end
              if grid[currentY][currentX] == 'T'
                treasureAmount += 1
              end
              if grid[currentY][currentX] == 'W'
                currentX += 1
                outputMessage = "You hit a wall going left!"
              end
              if grid[currentY][currentX] == '0'
                hitTheLights = TRUE
                outputMessage = "You hit the lights!"
              end
              #movementBehavior(grid, currentX, currentY)

          when "s"
              grid[currentY][currentX] = "."
              currentY += 1
              if currentY > grid.length-1
                currentY = 0
              end
              if grid[currentY][currentX] == 'T'
                treasureAmount += 1
              end
              if grid[currentY][currentX] == 'W'
                currentY -= 1
                outputMessage = "You hit a wall going down!"
              end
              if grid[currentY][currentX] == '0'
                hitTheLights = TRUE
                outputMessage = "You hit the lights!"
              end
          when "d"
              grid[currentY][currentX] = "."
              currentX += 1
              if currentX > grid.length-1
                currentX = 0
              end
              if grid[currentY][currentX] == 'T'
                treasureAmount += 1
              end
              if grid[currentY][currentX] == 'W'
                currentX -= 1
                outputMessage = "You hit a wall going right!"
              end
              if grid[currentY][currentX] == '0'
                hitTheLights = TRUE
                outputMessage = "You hit the lights!"
              end
          when "w"
              grid[currentY][currentX] = "."
              currentY -= 1
              if currentY < 0
                currentY += grid.length
              end
              if grid[currentY][currentX] == 'T'
                treasureAmount += 1
              end
              if grid[currentY][currentX] == 'W'
                currentY += 1
                outputMessage = "You hit a wall going up!"
              end
              if grid[currentY][currentX] == '0'
                hitTheLights = TRUE
                outputMessage = "You hit the lights!"
              end
          when "q"
              puts "you quit!"
          end

end                                   #End of while Exit loop
