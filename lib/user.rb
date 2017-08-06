require_relative 'coordinate'

class User
  attr_accessor :user_input, :coordinate

  def initialize
    @user_input = ''
    @coordinate = Coordinate.new
  end

  def get
    puts "Please Input Coordinates:"
    @user_input = gets.chomp
    # input_checker
  end

  def find_x
    a = self.user_input.split(",")[0].strip
    self.coordinate.x = a
  end

  def find_y
    a = self.user_input.split(",")[1].strip
    self.coordinate.y = a
  end

end

# input_checker makes sure it is integer only, between -10 and 10, and that there is, and only one comma
