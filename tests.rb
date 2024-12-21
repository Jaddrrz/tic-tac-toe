test_input = gets.chomp
split_test = test_input.split(" ")




while (["X", "O"].include?(split_test[0]) == false) || (split_test[1].to_i.between?(1,9) == false)
  puts "Type again"
  puts test_input
  test_input = gets
  split_test = test_input.split(" ")
end