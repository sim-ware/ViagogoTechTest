require_relative 'coordinate'

class User
  attr_accessor :user_input, :coordinate

  def initialize
    @user_input = ''
    @coordinate = Coordinate.new
  end

  def take_user_input
    puts "Please Input Coordinates between -10 and 10, separated by a Comma:"
    @user_input = gets.chomp
  end

  # put check_and_set_coordinates inside take_user_input?

  def check_and_set_coordinates
    self.user_input.split(",")[0].strip.to_i >= -10 && self.user_input.split(",")[0].strip.to_i <= 10 ? self.coordinate.x = self.user_input.split(",")[0].strip : 'Enter Coordinates as Integers between -10 and 10'
    self.user_input.split(",")[1].strip.to_i >= -10 && self.user_input.split(",")[1].strip.to_i <= 10 ? self.coordinate.y = self.user_input.split(",")[1].strip : 'Enter Coordinates as Integers between -10 and 10'
  end

end
