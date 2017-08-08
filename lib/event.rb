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
    if float.is_a? Float
      @price = format("$%.2f",float)
    else
      return 'Please enter a Float with up to 2 Decimal Places'
    end
  end

end

# condition ? if_true : if_false

# if number.is_a? Integer ? @tickets = number : 'Please enter an Integer'
