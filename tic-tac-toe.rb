require './tile.rb'

# Create array containing 9 instances of Tile and another with the mark values 

instances = []
marks = []
for n in 1..9
  instances.push(Tile.new(n))
end

# Push the mark values into the marks array

instances.each do |instance|
  marks.push(instance.value_mark)
end

# Show board with reference (consists of 9 lines)

def show_board(marks)
  #Line 1
  puts "   " + "|" + "   " + "|"

  #Line 2
  puts " #{marks[0]} " + "|" + " #{marks[1]} " + "|" + " #{marks[2]} " 

  #Line 3
  puts "___" + "|" + "___" + "|" + "___"

  #Line 4
  puts "   " + "|" + "   " + "|"

  #Line 5
  puts " #{marks[3]} " + "|" + " #{marks[4]} " + "|" + " #{marks[5]} " 

  #Line 6
  puts "___" + "|" + "___" + "|" + "___"

  #Line 7
  puts "   " + "|" + "   " + "|"

  #Line 8
  puts " #{marks[6]} " + "|" + " #{marks[7]} " + "|" + " #{marks[8]} " 

  #Line 9
  puts "   " + "|" + "   " + "|" 

  puts "\nUse these as reference" , "\n1 2 3", "4 5 6", "7 8 9"
end

show_board(marks)

puts "\nType your play, for example: X 9"

user_input = gets.chomp.split(" ")


while (["X", "O"].include?(user_input[0].to_s) == false) || (user_input[1].to_i.between?(1,9) == false)
  puts "Type again"
  user_input = gets.chomp.split(" ")
end

puts "You played #{user_input}"

# Find a way to choose where to insert a mark:
# - make a "tile" class where you put a circle/cross
# - find a way to put it in, maybe use positions like a1, b3, c2 
# - think of making a grid, line/diagonal and tile classes to manage everything:
#   - grid class is used as a container for tiles, maybe use to manage marks
#   - line class check whether a player has won or not

# How to insert marks:
# - input position and mark (8 X) 
# - use Tile class that has a "fill" function -> split the input and use them as parameters to fill the right tile, the mark parameter is used to create the type object

# Display the updated grid:
# - need 9 active blank objects that are always put in the commandline, these objects can be updated through the tile class

# Use range from 1 to 9 for tiles, a player chooses the corresponding tile number to locate mark, randomly decide which tile the npc chooses,
# Create a win condition, maybe insert all possible win conditions and keep checking if one is true:
#   All win conditions are 8 (3 horizontals, 3 verticals and 2 diagonals) -> need to check if the corresponding tiles have the same mark ->
#   the inserted mark must be objects in order to recognise whether a win condition is true

# Announce winner or tie