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

# if self.list.any?
#   (0..self.list.length).each do |i|
#     if (a.coordinate.x == self.list[i].coordinate.x) && (a.coordinate.y == self.list[i].coordinate.y)
#       return "Coordinates Already Taken."
#     end
#   end
# end
#
# def check_coordinates(event)
#   if self.list.any?
#     if (a.coordinate.x == self.list[0].coordinate.x) && (a.coordinate.y == self.list[0].coordinate.y)
#       return "Coordinates Already Taken."
#     end
#   end
# end
#
# (0..5).each do |i|
#    puts "Value of local variable is #{i}"
# end
#
# (0..self.list.length).each do |i|
#   if (a.coordinate.x == self.list[i].coordinate.x) && (a.coordinate.y == self.list[i].coordinate.y)
#     return "Coordinates Already Taken."
#   end
# end

# def create_event(x, y, id, tickets, price)
#   a = Event.new
#   a.coordinate.x = x
#   a.coordinate.y = y
#   if self.list.any?
#     if (a.coordinate.x == self.list[0].coordinate.x) && (a.coordinate.y == self.list[0].coordinate.y)
#       return "Coordinates Already Taken."
#     end
#   end
#   a.id_setter(id)
#   a.ticket_setter(tickets)
#   a.price_setter(price)
#   @list.push(a)
# end
