require 'event_list'

describe EventList do

  context "#initialize" do
    it "is initialized with empty coordinates by default" do
      eventlist = EventList.new
      expect(eventlist.list).to eq []
    end
  end

  context "#create_events" do
    it "Generates 9 Event Objects with Random Prices and Ticket Nos and Adds them to List attribute Array" do
     eventlist = EventList.new
     eventlist.create_events
     expect(eventlist.list.length).to eq 9
    end

    it "Generates valid Prices for those Objects" do
      eventlist = EventList.new
      eventlist.create_events
      expect(eventlist.list[0].ticketlist[0].price).to be_instance_of String
    end

    it "Generates valid Ticket Numbers for those Objects" do
      eventlist = EventList.new
      eventlist.create_events
      expect(eventlist.list[0].ticketlist.length).to be_instance_of Integer
    end
  end

  context "#create_ids" do
    it "Generates 9 Unique Ordered IDs for the Events in the List attribute Array" do
     eventlist = EventList.new
     eventlist.create_events
     eventlist.create_ids
     expect(eventlist.list[0].id).to eq 1
     expect(eventlist.list[8].id).to eq 9
    end
  end


  context "#create_coordinates" do
    it "Generates Random Coordinates between -10 and 10 and assigns them to each Event Object's Coordinate Object" do
     eventlist = EventList.new
     eventlist.create_events
     eventlist.create_coordinates
     expect(eventlist.list[0].coordinate.x).to be_within(10).of(0)
     expect(eventlist.list[8].coordinate.y).to be_within(10).of(0)
    end
  end

  context "#coordinate_duplicates" do
    it "Checks the Coordinates to see if any are the same, and reruns the #create_coordinates method until they're unique" do
      eventlist = EventList.new
      eventlist.create_events
      eventlist.create_coordinates
      eventlist.list[0].coordinate.x = -9
      eventlist.list[0].coordinate.y = 9
      eventlist.list[1].coordinate.x = -9
      eventlist.list[1].coordinate.y = 9
      eventlist.coordinate_duplicates
      expect(eventlist.coordinate_duplicates).to eq " "
    end
  end
end
