require_relative 'coordinate'

class User
  attr_accessor :user_input, :coordinate

  def initialize
    @user_input = ''
    @coordinate = Coordinate.new
  end

  def user_input_to_coordinates
    puts "Please Input Coordinates:"
    @user_input = gets.chomp
    # input_checker
    # self.coordinate.x = self.user_input.split(",")[0].strip
    # self.coordinate.y = self.user_input.split(",")[1].strip
  end

  def check_x
    self.user_input.split(",")[0].strip.to_i >= -10 && self.user_input.split(",")[0].strip.to_i <= 10 ? self.coordinate.x = self.user_input.split(",")[0].strip : 'Enter Coordinates as Integers between -10 and 10'
  end

  def check_y
    self.user_input.split(",")[1].strip.to_i >= -10 && self.user_input.split(",")[1].strip.to_i <= 10 ? self.coordinate.y = self.user_input.split(",")[1].strip : 'Enter Coordinates as Integers between -10 and 10'
  end

end

# def find_x
#   self.coordinate.x = self.user_input.split(",")[0].strip
# end

# input_checker makes sure it is integer only, between -10 and 10, and that there is, and only one comma

# (self.coordinate.x = self.user_input.split(",")[0].strip) if (self.user_input.split(",")[0].strip (>= -10 && <= 10)) : 'Enter Coordinates as Integers between -10 and 10'

# (self.coordinate.x = self.user_input.split(",")[0].strip) if self.user_input.split(",")[0].strip.to_i >= -10
# for if / else oneliners you can use also
#
# ( [condition] ? [true] : [false] )
#
# self.user_input.split(",")[0].strip.to_i >= -10 ? self.coordinate.x = self.user_input.split(",")[0].strip : 'Enter Coordinates as Integers between -10 and 10'
