# ViagogoTechTest

assumes coordinates can be integer only

assumes we only have an option of nine events at a time (convenience, 1-9)

assumes max of 100 tickets, for convenience

Deprecation Warnings:

Using `stub` from rspec-mocks' old `:should` syntax without explicitly enabling the syntax is deprecated. Use the new `:expect` syntax or explicitly enable `:should` instead. Called from /Users/simmy/Code/ViagogoTechTest/spec/user_spec.rb:36:in `block (3 levels) in <top (required)>'.


If you need more of the backtrace for any of these deprecations to
identify where to make the necessary changes, you can configure
`config.raise_errors_for_deprecations!`, and it will turn the
deprecation warnings into errors, giving you the full backtrace.

puts please enter coordinates in RSpec


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
