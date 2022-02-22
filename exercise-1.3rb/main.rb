movie = "Call of the Wild"
def favorite_movie(movie)
  print "My favorite movie is #{movie}."
end

food = "ice cream"
def favorite_food(food)
  print "My favorite food is #{food}." 
end

drink = "tea"
def favorite_drink(drink)
  print "My favorite drink is #{drink}."
end


def list_of_favorite_things(movie, food, drink)
  print favorite_movie(movie)
  puts 
  print favorite_food(food)
  puts 
  print favorite_drink(drink)
end
list_of_favorite_things(movie, food, drink)
