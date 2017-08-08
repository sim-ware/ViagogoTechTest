require './lib/coordinate'
require './lib/user'
require './lib/event'

b = User.new
b.user_input=('  45  ,  60  ')

c = User.new


c = Event.new

# c.id=('001')# way of limiting it to a three digit string
# c.price=('$34.50')# way of conducting it as a price
# c.tickets=('90')# way of making sure it is whole integer, can't be less than zero
# c.coordinate - find a way to store a coordinate object
# c.distance - find a way to calculate this based on the user's location
