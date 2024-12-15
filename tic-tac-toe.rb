# Create initial board with reference
puts "_" + "|" + "_" + "|" + "_" ,  "_" + "|" + "_" + "|" + "_" , " " + "|" + " " + "|" + " "
puts "Use these as reference" , "1 2 3", "4 5 6", "7 8 9"

# Find a way to choose where to a mark:
# - make a "tile" class where you put a circle/cross
# - find a way to put it in, maybe use positions like a1, b3, c2 
# - think of making a grid, line/diagonal and tile classes to manage everything:
#   - grid class is used as a container for tiles, maybe use to manage marks
#   - line class check whether a player has won or not


# use range from 1 to 9 for tiles, a player chooses the corresponding tile number to locate mark, randomly decide which tile the npc chooses,
# create a win condition, maybe insert all possible win conditions and keep checking if one is true   

# Announce winner or tie