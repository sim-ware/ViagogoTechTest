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
      expect(eventlist.list[0].price).to be_instance_of String
    end

    it "Generates valid Ticket Numbers for those Objects" do
      eventlist = EventList.new
      eventlist.create_events
      expect(eventlist.list[0].tickets).to be_instance_of Integer
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

  end
  #
  # context "#create_ids" do
  #   it "Generates Unique ID's from 1-9 and assigns them to each Event Object within List attribute Array" do
  #
  #   end
  # end
  #
  # context "#create_coordinates" do
  #   it "Generates Random Coordinates between -10 and 10 and assigns them to each Event Object's Coordinate Object" do
  #
  #   end
  # end
