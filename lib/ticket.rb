class Ticket
  attr_accessor :price

  def initialize
    @price = 0
  end

  def price_setter(float)
    if float.is_a? Float
      @price = format("$%.2f",float)
    else
      return 'Please enter a Float with up to 2 Decimal Places'
    end
  end

end
