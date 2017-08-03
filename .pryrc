require './lib/coordinate'
require './lib/event'

a = Coordinate.new
a.set(-11,11)

b = Event.new
b.id=('001')# way of limiting it to a three digit string
b.price=('$34.50')# way of conducting it as a price
b.tickets=('90')# way of making sure it is whole integer, can't be less than zero
# b.coordinate - find a way to store a coordinate object
# b.distance - find a way to calculate this based on the user's location
