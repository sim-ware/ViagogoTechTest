# ViagogoTechTest

## The Challenge

You are required to write a program which accepts a user location as a pair of co- ordinates, and returns a list of the five closest events, along with the cheapest ticket price for each event.

* Your program should randomly generate seed data.
Your program should operate in a world that ranges from -10 to +10 (Y axis), and -10
to +10 (X axis).
* Your program should assume that each co-ordinate can hold a maximum of one event.
* Each event has a unique numeric identifier (e.g. 1, 2, 3).
* Each event has zero or more tickets.
* Each ticket has a non-zero price, expressed in US Dollars.
* The distance between two points should be computed as the Manhattan distance.

## Example Program Run
```
Please Input Coordinates:
=> 4,2
Closest Events to (4,2):
Event 003 - $30.29, Distance 3
Event 001 - $35.20, Distance 5
Event 006 - $01.40, Distance 12
```

## Approach

I wanted to follow the example closely, and focus on building a REPL-based entirely to create a piece
of software with minimal dependencies, and is easy to use.
I hoped this would give me greater control over the software, and a better idea of how each part works.

## Structure

I attempted a Domain Driven Design, looking at splitting the nouns and verbs in the given Scenario into
Class and Method ideas. I centred around User and Event Objects, and their interactions. Both Objects needed
Coordinates, and given the attention the task gave to coordinates (i.e. they have to be between -10 and 10,
separate Event Objects cannot have the same coordinates, and the manhattan_distance calculations require
coordinates) I decided to make a Coordinate Class too, which initializes within the Event and User classes
as an attribute. Given the fact that each Event required several tickets with varying prices, and an eventual
comparison of those prices, I thought it best to create a ticket class too, which initialises within the Event
Class and are stored in a ticketlist Array. Given that in the example, a single User has several Event Options,
I thought it best to create a class that can Instantiate and store Event Objects too, so that they can eventually
be compared (by manhattan distance) too. Finally, I needed some sort of Class to instantiate a User and a list of
Events so that they can interact, and created the Query Class

### Assumptions

When writing this software I had to make assumptions about the maximum number of Events within an Eventlist, and
the number of tickets on offer per event. I decided to have a max of 9 Events per EventList, and 5 tickets per
event because these were easily manipulable numbers in a development environment. I also assumed that the only
valid coordinates within the -10 to 10 range were the integer ones. Again this was a decision taken because it
made development easier.

# How to Run
## Getting started
Enter the following commands in your terminal to download the program:
- `git clone https://github.com/sim-ware/https://github.com/sim-ware/ViagogoTechTest.git.git`
- cd into the ViagogoTechTest directory
- Please run `bundle` to install the necessary ruby `gemfile` dependencies

## Usage
- Enter the command 'rspec' to run tests
- Type the command `pry` to see an example run of the software
- Enter 'q' in the PRY environment to return entire Query Object containing Random Seeded Data

```
Please Input Coordinates between -10 and 10, separated by a Comma:
 => 4,3
Event 008 - $126.25, Distance 7
Event 001 - $81.56, Distance 8
Event 002 - $174.41, Distance 8
Event 005 - $28.42, Distance 9
Event 006 - $124.07, Distance 13
```

## How might you change your program if you needed to support multiple events at the same location?

  I would Remove the Coordinate Duplicates Function in EventList Class, called #coordinate_duplicates.
When an EventList has been created, and populated with random seed data through the #create_events, #create_ids, and #create_coordinates methods, it places all the Event's Coordinates within individual arrays, within a larger array, and checks to see if any of the coordinates match. If they do, the #create_coordinates method is re-run, reseeding the Coordinates randomly until none of the coordinates match. By removing the method and its process described above, Coordinates are randomly generated for Event Objects as integers between -10 and 10, but with no regard for whether they overlap.




-it could have an overall price comparer, instead of just one per Event Object,
  allowing the User to make a decision based on price. How would you Code this?


## How would you change your program if you were working with a much larger world size?

-assumptions would harm usefulness - hard coded and a little inconsistent in their location
-user location, range of coordinates within city, country?
-adapt manhattan_distance calculation to work with non-grid city, think of using google API or some sort of Map software
-database, handle information and make random seed data generation a bit easier and smoother to code - can be done in a
 rails file using active record for example - whereas i've hard coded the randomness over several files which makes it a
 bit harder to customise
 -user_login
 -in interest of UX probably better to have
   a grid so user can trust calculation (e.g. Wiki Diagram Explanation of Distance
   easy to understand pictorially, hard to constantly figure it out when coding,
   assume user would feel safer with a picture of the situation)
 --if we were to do this, maybe think about a select coordinate function where you
   can see what's going on based on location
