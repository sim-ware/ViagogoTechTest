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
