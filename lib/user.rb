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
    self.user_input.split(",")[0].strip.to_i >= -10 && self.user_input.split(",")[0].strip.to_i <= 10 ? self.coordinate.x = self.user_input.split(",")[0].strip : 'Enter Coordinates as Integers between -10 and 10'
    self.user_input.split(",")[1].strip.to_i >= -10 && self.user_input.split(",")[1].strip.to_i <= 10 ? self.coordinate.y = self.user_input.split(",")[1].strip : 'Enter Coordinates as Integers between -10 and 10'
  end

end

# # this code sets the User Object's Coordinates to its User Input
# self.coordinate.x = self.user_input.split(",")[0].strip
# self.coordinate.y = self.user_input.split(",")[1].strip
#
# # if the User Input is beyond -10 and 10, this code returns an Error
# self.user_input.split(",")[0].strip.to_i >= -10 && self.user_input.split(",")[0].strip.to_i <= 10 ? 'Enter Coordinates as Integers between -10 and 10'
# self.user_input.split(",")[0].strip.to_i >= -10 && self.user_input.split(",")[0].strip.to_i <= 10 ? 'Enter Coordinates as Integers between -10 and 10'
