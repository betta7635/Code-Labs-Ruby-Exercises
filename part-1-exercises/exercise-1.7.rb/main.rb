print "Please enter a sentence: "
user_input = gets.chomp
print "You typed: #{user_input}"
puts 

print "What number would you like to multiply by two?"
puts 
num_1 = gets.chomp
def multiply_by_two(num_1)
  print "#{num_1} multiplied by 2 equals #{num_1.to_f * 2.to_f}."
end
multiply_by_two(num_1)
puts 

print "What number would you like to divide by two?"
puts 
num_2 = gets.chomp
def divide_by_two(num_2)
  print "#{num_2} divided by 2 equals #{num_2.to_f / 2.to_f}."
end
divide_by_two(num_2)
