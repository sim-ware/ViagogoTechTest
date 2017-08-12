require './lib/coordinate'
require './lib/user'
require './lib/event'
require './lib/event_list'
require './lib/ticket'
require './lib/query'

q = Query.new

while q.user.coordinate.x == 0 && q.user.coordinate.y == 0
  q.user.take_user_input
  q.user.check_and_set_coordinates
end

q.eventlist.create_events
q.eventlist.create_ids
q.eventlist.create_coordinates

q.calculate_manhattan_distances
q.push_manhattan_distances
q.add_cheapest_prices
q.arrange
q.show_nearest

# w = q.eventlist.list[5].ticketlist
# # objects.sort_by {|obj| obj.attribute}
# w.sort_by! {|ticket| ticket.price.gsub(/[^\d\.]/, '').to_f}
# Event 003 - $30.29, Distance 3
# Event 001 - $35.20, Distance 5
# Event 006 - $01.40, Distance 12


# for i in 0..8
 # w = q.eventlist.list[0].ticketlist
 # w.sort_by! {|ticket| ticket.price.gsub(/[^\d\.]/, '').to_f}
#   @nearest[i].push(w[0])
# end

# b = []
# for i in 0..8
#   c = []
#   c.push(q.eventlist.list[i].id)
#   c.push(q.eventlist.list[i].manhattan_distance)
#   b.push(c)
# end



















# objects.sort_by(&:attribute)
# a = q.eventlist.list
# a.sort_by(&:manhattan_distance)
#
# objects.sort_by {|obj| obj.attribute}
#
# a.sort_by {|event| event.manhattan_distance }

#
#
# # sorted = array.sort {|a,b| a[1] <=> b[1]}
# y = b.sort {|id, md| id[1] <=> md[1]}

# Hash["a" => 100, "b" => 200]

# b = []
#
# for i in 0..8
#   a = []
# a.push(d.list[i].coordinate.x)
# a.push(d.list[i].coordinate.y)
# b.push(a)
# end
#
# if b.uniq.length == b.length
#   puts "Events do not contain duplicate coordinates"
# else
#   puts "Events do contain duplicate coordinates"
# end

# Manhattan Distance Calculator // Example Object
#
# u = User.new
# u.coordinate.x = 7
# u.coordinate.y = -4
#
# d.list[0].coordinate.x = -10
# d.list[0].coordinate.y = 9
#
# md = (u.coordinate.x - d.list[0].coordinate.x).abs + (u.coordinate.y - d.list[0].coordinate.y).abs

# returns a list of the five closest events, along with the cheapest ticket price for each event
# Please Input Coordinates:
# > 4,2
# Closest Events to (4,2):
# Event 003 - $30.29, Distance 3
# Event 001 - $35.20, Distance 5
# Event 006 - $01.40, Distance 12
