# test_input = gets.chomp
# split_test = test_input.split(" ")

# while (["X", "O"].include?(split_test[0]) == false) || (split_test[1].to_i.between?(1,9) == false)
#   puts "Type again"
#   puts test_input
#   test_input = gets
#   split_test = test_input.split(" ")
# end

blank = []
new_blank = []

def change(something)
  new_blank = something
  new_blank = gets.chomp.split(" ")
  p new_blank
  return new_blank
end

change(blank)
p new_blank