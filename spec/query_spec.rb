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

  context "#calculate_manhattan_distances" do
    it "calculates and adds manhattan_distance value to respective Event" do
      query = Query.new
      query.user.coordinate.x = 5
      query.user.coordinate.y = -5
      query.eventlist.create_events
      query.eventlist.create_ids
      query.eventlist.create_coordinates
      query.calculate_manhattan_distances
      expect(query.eventlist.list[0].manhattan_distance).to be_instance_of Integer
    end
  end

  context "#push_manhattan_distances" do
    it "adds manhattan_distance value to Query @nearest Array" do
      query = Query.new
      query.user.coordinate.x = 5
      query.user.coordinate.y = -5
      query.eventlist.create_events
      query.eventlist.create_ids
      query.eventlist.create_coordinates
      query.calculate_manhattan_distances
      query.push_manhattan_distances
      expect(query.nearest.length).to be 9
    end
  end

  context "#add_cheapest_prices" do
    it "goes through each Event Object's Ticket Prices, selects the cheapest and adds it to Query @nearest Array" do
      query = Query.new
      query.eventlist.create_events
      query.push_manhattan_distances
      query.add_cheapest_prices
      expect(query.nearest[0][2]).to be_instance_of String
    end
  end

  context "#arrange" do
    it "sorts the Query @nearest Array by manhattan_distance" do
      query = Query.new
      query.user.coordinate.x = 5
      query.user.coordinate.y = -5
      query.eventlist.create_events
      query.eventlist.create_ids
      query.eventlist.create_coordinates
      query.calculate_manhattan_distances
      query.push_manhattan_distances
      query.add_cheapest_prices
      query.arrange
      # puts "#{query.nearest[0]}"
      y = query.nearest[8][1]
      expect(query.nearest[0][1]).to be < y
    end
  end

  # context "#show_nearest" do
  #   it "Returns a List of the 5 Nearest Events, their ID, and cheapest Price" do
  #     query = Query.new
  #     query.user.coordinate.x = 5
  #     query.user.coordinate.y = -5
  #     query.eventlist.create_events
  #     query.eventlist.create_ids
  #     query.eventlist.create_coordinates
  #     query.calculate_manhattan_distances
  #     query.push_manhattan_distances
  #     query.add_cheapest_prices
  #     query.arrange
  #   end
  # end

end
