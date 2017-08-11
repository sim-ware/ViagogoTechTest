require_relative 'user'
require_relative 'event_list'

class Query

  attr_accessor :user, :eventlist, :nearest

  def initialize
    @user = User.new
    @eventlist = EventList.new
    @nearest = []
  end

  def calculate_manhattan_distances
    for i in 0..8
      self.eventlist.list[i].manhattan_distance = (self.user.coordinate.x - self.eventlist.list[i].coordinate.x).abs + (self.user.coordinate.y - self.eventlist.list[i].coordinate.y).abs
    end
  end

  def push_manhattan_distances
    for i in 0..8
      c = []
      c.push(self.eventlist.list[i].id) && c.push(self.eventlist.list[i].manhattan_distance)
      @nearest.push(c)
    end
  end

  def add_cheapest_prices
    for i in 0..8
      w = self.eventlist.list[i].ticketlist
      w.sort_by! {|ticket| ticket.price.gsub(/[^\d\.]/, '').to_f}
      @nearest[i].push(w[0].price)
    end
  end

  def arrange
    @nearest.sort! {|id, md| id[1] <=> md[1]}
  end

  def show_nearest
    for i in 0..4
      puts "Event 00#{self.nearest[i][0]} - #{self.nearest[i][2]}, Distance #{self.nearest[i][1]} "
    end
  end

end
