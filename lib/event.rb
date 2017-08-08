require_relative 'coordinate'

class Event
  attr_reader :coordinate, :id, :tickets, :price

  def initialize
    @coordinate = Coordinate.new
    @id = '0'
    @tickets = 0
    @price = 0
  end

  def id_setter(number)
    @id = number
  end

  def ticket_setter(number)
    if number.is_a? Integer
      @tickets = number
    else
      return 'Please enter an Integer'
    end
  end

  def price_setter(float)
    # if (dollars.is_a? Integer) && (cents.is_a? Integer) && (cents + dollars > 0)
    #   @price = "$#{dollars}.#{cents}"
    # else
    #   return 'Please enter an Integer for dollars, a comma, and then an Integer for cents. Price must be Above Zero'
    # end
    if float.is_a? Float
      @price = format("$%.2f",float)
    else
      return 'Please enter a Float'
    end
  end

end

# require_relative 'coordinate'
#
# class Event
#   attr_accessor :coordinate, :id, :tickets, :price, :distance
#
#   def initialize
#     @coordinate = Coordinate.new
#     @id = '000' from 1 - 9
#     @tickets = 0 moderate to be zero or more, has to be float
#     @price = 0 moderate to be non-zero, express in usd
#     @distance = 0 should be calculated in Query class, as it requires, User, Event, and respective Coordinate
# =>              objects to work
#   end
#
# end
# (e.g. 1, 2, 3).
# • Each event has zero or more tickets.
# • Each ticket has a non-zero price, expressed in US Dollars
