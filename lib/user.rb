require_relative 'coordinate'

class User
  attr_accessor :coordinate

  def initialize
    @coordinate = []
  end

  def get(user_input = gets.chomp)
    puts "Please Input Coordinates:"
    user_input
  end

end

# def get
#   puts "Please Input Coordinates:"
#   a = gets.chomp
#   puts a
# end
#
# def capture_name(user_input = gets.chomp)
#   puts "What is your name?"
#   user_input
# end
