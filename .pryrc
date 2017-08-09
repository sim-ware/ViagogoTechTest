require './lib/coordinate'
require './lib/user'
require './lib/event'
require './lib/event_list'
require './lib/ticket'

c = User.new

d = Event.new

e = EventList.new
e.create_events

x = Ticket.new
