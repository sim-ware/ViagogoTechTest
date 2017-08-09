require_relative 'coordinate'
require_relative 'event'

class EventList
  attr_accessor :list

  def initialize
    @list = []
  end

  # def create_event(tickets, price)
  #   a = Event.new
  #   a.ticket_setter(tickets)
  #   a.price_setter(price)
  #   @list.push(a)
  # end

  def create_events
    for i in 0..9
      a = Event.new
      b = rand(0..100)
      c = rand(20.00..200.00)
      a.ticket_setter(b)
      a.price_setter(c)
      @list.push(a)
    end
  end
  #
  # for i in 0..5
  #    puts "Value of local variable is #{i}"
  # end

  def create_ids(id)
    #loops through Events in Event List and Gives them ordered, unique ID's
  end

  def create_coordinates(x, y)
    # loops through Events in Event List and Assigns each a coordinate, and then
    # checks through all other Events in Event List, and if those coordinates are unique
    # moves on to the next one and does the same thing
  end

end
