class Coordinate
  attr_accessor :x, :y

  def initialize
    @x = 0
    @y = 0
  end

  def set(x, y)
    @x = "#{x}".to_i
    @y = "#{y}".to_i
  end

end

# def get
#   puts "Please Input Coordinates:"
#   a = gets.chomp
#   puts a
# end

# class Cell
#   attr_accessor :value
#
#   def initialize(value = "")
#     @value = value
#   end
#
# end
#

# def initialize
#   @clock = ''
#   @standard_del = []
#   @express_del = []
#   @price = 0
#   @discount_price = 0
# end

# def clock_number(number)
#   @clock = "#{number}"
# end
