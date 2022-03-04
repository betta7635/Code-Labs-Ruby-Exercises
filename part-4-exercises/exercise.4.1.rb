require "bundler/inline"
gemfile do
  source "http://rubygems.org"
  gem "bcrypt"
end
require "bcrypt"

class User
  #Attributes
  attr_accessor :username, :password, :logged_in

  #Class Variables
  #Stores user instances
  @@users = []

  def initialize(username, password)
    @password = create_hash_digest(password)
    @username = username
    @logged_in = false
    @@users << self
  end

  #Instance Methods
  #checks to see if the user is "logged in"
  def logged_in?
    # if user.username == username && create_hash_digest(user.password) == password
    #   user.logged_in = true
    #   return user.logged_in
    # else
    #   user.logged_in = false
    #   return user.logged_in 
    # end
    @logged_in
  end

  #salts password
  def create_hash_digest(password)
    p password 
    BCrypt::Password.create(password)
  end

  #Class Methods
  def self.all
    @@users
  end

  #"logs in user"
  def self.login(username, password)
    current_user = nil
      User.all.each do |user|
          if user.username == username && user.password == password
            user.logged_in = true
            current_user = user
            break
          end
      end
    current_user
  end

end

#Initializing instances
User.new("johndoe123", "password1")
User.new("skywoman456", "password2")
User.new("jimmyjohns789", "password3")

isLoggedIn = false

#Count to keep track of how many login attempts have been tried
tries = 0
user = nil
# def user.login(username, password)
  while (isLoggedIn == false)
    puts "What is your username?"
    username = gets.chomp
    puts "What is your password?"
    password = gets.chomp
    

    user = User.login(username, password)
    # nil or a user instance

    if user 
      puts "Login Succesful!"
      isLoggedIn = true;
    else
      puts "Try again!"
      tries += 1
      if(tries == 3)
        puts "Too many attempts, try again later"
        break;
      end
    end

    # if user.logged_in = false && tries < 3
    #   puts "Attempt #{tries} / 3"
    # elsif tries == 3
    #   puts "Too many attempts, try again later"
    #   break
    # end
  end
  # if user.logged_in = true
  #   user = current_user
  #   isLoggedIn = true
  #   puts "Logged in successfully!"
  # end
# end
