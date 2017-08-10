require_relative 'coordinate'
require_relative 'event'

class EventList
  attr_accessor :list

  def initialize
    @list = []
  end

  def create_events
    for i in 0..8
      a = Event.new
      a.create_tickets
      @list.push(a)
    end
  end

  def create_ids
    for i in 0..8
      self.list[i].id = i+1
    end
  end

  def create_coordinates
    for i in 0..8
      self.list[i].coordinate.x = rand(-10..10)
      self.list[i].coordinate.y = rand(-10..10)
    end
  end

  def coordinate_duplicates?
    b = []
      for i in 0..8
        a = []
        a.push(self.list[i].coordinate.x)
        a.push(self.list[i].coordinate.y)
        b.push(a)
      end
    b.uniq.length == b.length ? false : true
  end

end
