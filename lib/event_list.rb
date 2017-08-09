require_relative 'coordinate'
require_relative 'event'

class EventList
  attr_accessor :list

  def initialize
    @list = []
  end

  def create_events
    for i in 0..8
      a = Event.new
      b = rand(0..100)
      c = rand(20.00..200.00)
      a.ticket_setter(b)
      a.price_setter(c)
      @list.push(a)
    end
  end


  def create_ids
    for i in 0..8
      self.list[i].id_setter(i+1)
    end
  end

  def create_coordinates
    # loops through Events in Event List and Assigns each a coordinate, and then
    # checks through all other Events in Event List, and if those coordinates are unique
    # moves on to the next one and does the same thing
    # for i in 0..8
    #   self.list[i].id_setter(i+1)
    # end
    for i in 0..8
      self.list[i].coordinate.x = rand(-10..10)
      self.list[i].coordinate.y = rand(-10..10)
    end
  end

end
