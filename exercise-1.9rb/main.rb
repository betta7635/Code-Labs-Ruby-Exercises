print "Please enter your first number: "
num_1 = gets.chomp
print "Please enter your second number: "
num_2 = gets.chomp
puts 

def add_method(num_1, num_2)
  print "#{num_1} plus #{num_2} equals #{num_1.to_f + num_2.to_f}."
end
add_method(num_1, num_2)
puts 

def subtract_method(num_1, num_2)
  print "#{num_1} minus #{num_2} equals #{num_1.to_f - num_2.to_f}."
end
subtract_method(num_1, num_2)
puts 

def multiply_method(num_1, num_2)
  print "#{num_1} multiplied by #{num_2} equals #{num_1.to_f * num_2.to_f}."
end
multiply_method(num_1, num_2)
puts

def divide_method(num_1, num_2)
  print "#{num_1} divided by #{num_2} equals #{num_1.to_f / num_2.to_f}."
end
divide_method(num_1, num_2)
