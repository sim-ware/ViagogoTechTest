require 'query'

describe Query do

  context "#initialize" do
    it "is initialized with empty coordinates by default" do
      query = Query.new
      expect(query.user.coordinate.x).to eq 0
      expect(query.user.coordinate.y).to eq 0
      expect(query.eventlist.list).to eq []
      expect(query.nearest).to eq []
    end
  end

  context "#add_manhattan_distances" do
    it "calculates and adds manhattan_distance value to respective Event" do
      query = Query.new
      query.user.coordinate.x = 5
      query.user.coordinate.y = -5
      query.eventlist.list
      query.eventlist.create_events
      query.eventlist.create_ids
      query.eventlist.create_coordinates
      query.add_manhattan_distances
      expect(query.eventlist.list[0].manhattan_distance).to be_instance_of Integer
    end
  end

end

# require 'event_list'
#
# describe EventList do
#
#   context "#initialize" do
#     it "is initialized with empty coordinates by default" do
#       eventlist = EventList.new
#       expect(eventlist.list).to eq []
#     end
#   end
#
# end
