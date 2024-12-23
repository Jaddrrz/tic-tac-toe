require './tile.rb'

# Ask user to input their play which gets split and saved into "user_input"

def start_round(user_input)
  puts "\nType your play, for example: X 9"

  user_input.replace(gets.chomp.split(" "))

  while (["X", "O"].include?(user_input[0].to_s) == false) || (user_input[1].to_i.between?(1,9) == false) # Check if both parts of input are acceptable 
    puts "\nType again"
    user_input = gets.chomp.split(" ")
  end

  puts "\nYou played #{user_input}"
  user_input
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

# Update the board with the given play
def update_board(mark_type, position, marks)
  
  # Go through the marks array and update the element that corresponds to the wanted tile

  marks.each_with_index do |mark, index|
    if index == (position.to_i - 1)   # "Minus one" is needed because index doesn't correspond to board position"
      marks[position.to_i - 1] = mark_type.to_s # Updates the array element
    end
  end
end

# Add a random play from the "computer"

def random_input(user_input, marks)
  
  # Find a position that was not taken by the previous user play
  random_index = rand(1..9) 
    while random_index.to_i == user_input[1].to_i
      random_index = rand(1..9)
    end
  
  marks[random_index.to_i - 1] = "O"
  p marks
end

# Create win conditions: 1 2 3, 4 5 6, 7 8 9, 1 4 7, 2 5 8, 3 6 9, 1 5 9, 3 5 7

win = false

# Create array containing 9 instances of Tile and another with the mark values 

user_input = []
instances = []
marks = []
for n in 1..9
  instances.push(Tile.new(n))
end

# Push the mark values into the marks array

instances.each do |instance|
  marks.push(instance.value_mark)
end


show_board(marks)

start_round(user_input)


update_board(user_input[0], user_input[1], marks)

random_input(user_input, marks)

show_board(marks)






if marks[0] == marks[1] && marks[0] == marks[2]
  win = true1
end

if win == true
  puts "A player has won"
end

