require_relative 'coordinate'

class User
  attr_accessor :user_input, :coordinate

  def initialize
    @user_input = ''
    @coordinate = Coordinate.new
  end

  def get_user_input
    puts "Please Input Coordinates:"
    @user_input = gets.chomp
    # input_checker
  end

  def find_x
    self.coordinate.x = self.user_input.split(",")[0].strip
  end

  def find_y
    self.coordinate.y = self.user_input.split(",")[1].strip
  end

end

# input_checker makes sure it is integer only, between -10 and 10, and that there is, and only one comma
