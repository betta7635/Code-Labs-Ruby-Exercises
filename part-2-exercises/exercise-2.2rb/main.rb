array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array.each do |number| number * 2
  if (number * 2).even?
    puts "#{number} times 2 equals #{number * 2}. This number is even."
  elsif (number * 2).odd?
    puts "#{number} times 2 equals #{number * 2}. This number is odd."
  end
end
puts
array.each do |number| 
  multiply = number * 2
  array.select {|multiply| multiply}
    if multiply.even?
      puts "#{number} times 2 equals #{number * 2}. This number is even."
    elsif multiply.odd?
      puts "#{number} times 2 equals #{number * 2}. This number is odd."
    end
end
