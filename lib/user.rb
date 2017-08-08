require_relative 'coordinate'

class User
  attr_accessor :user_input, :coordinate

  def initialize
    @user_input = ''
    @coordinate = Coordinate.new
  end

  def take_user_input
    puts "Please Input Coordinates:"
    @user_input = gets.chomp
  end

  # strip input and reassemble inside take_user_input method?
  # then we can have a simpler checker that works on trimmed variables instead of having to find them too

  def check_and_set_coordinates
    self.user_input.split(",")[0].to_s.strip.to_i >= -10 && self.user_input.split(",")[0].to_s.strip.to_i <= 10 ? self.coordinate.x = self.user_input.split(",")[0].to_s.strip : 'Enter Coordinates as Integers between -10 and 10'
    self.user_input.split(",")[1].to_s.strip.to_i >= -10 && self.user_input.split(",")[1].to_s.strip.to_i <= 10 ? self.coordinate.y = self.user_input.split(",")[1].to_s.strip : 'Enter Coordinates as Integers between -10 and 10'
  end

end
