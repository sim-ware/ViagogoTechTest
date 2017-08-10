require './lib/coordinate'
require './lib/user'
require './lib/event'
require './lib/event_list'
require './lib/ticket'



d = EventList.new
d.create_events
d.create_ids
d.create_coordinates

# Coordinate Duplicate Checker // Event List

d.list[0].coordinate.x = -9
d.list[0].coordinate.y = 9
d.list[1].coordinate.x = -9
d.list[1].coordinate.y = 9

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
