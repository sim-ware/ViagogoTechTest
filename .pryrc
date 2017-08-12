require './lib/coordinate'
require './lib/user'
require './lib/event'
require './lib/event_list'
require './lib/ticket'
require './lib/query'

q = Query.new

q.user.loop_input_moderation

q.eventlist.create_events
q.eventlist.create_ids
q.eventlist.create_coordinates

q.calculate_manhattan_distances
q.push_manhattan_distances
q.add_cheapest_prices
q.arrange
q.show_nearest
