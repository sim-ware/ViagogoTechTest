require './lib/coordinate'
require './lib/user'
require './lib/event'
require './lib/event_list'

c = User.new

d = Event.new

e = EventList.new
e.create_events
