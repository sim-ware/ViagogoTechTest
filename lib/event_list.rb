require_relative 'coordinate'
require_relative 'event'

class EventList
  attr_accessor :list

  def initialize
    @list = []
  end

  def create_event(x, y, id, tickets, price)
    a = Event.new
    a.coordinate.x = x
    a.coordinate.y = y
    a.id_setter(id)
    a.ticket_setter(tickets)
    a.price_setter(price)
    @list.push(a)
  end

end
