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
When an EventList has been created, and populated with random seed data through the #create_events, #create_ids, and #create_coordinates methods, #coordinate_duplicates places all the Event's Coordinates within individual arrays, within a larger array, and checks to see if any of the coordinates match. If they do, the #create_coordinates method is re-run, reseeding the Coordinates randomly until none of the coordinates match. By removing the method and its process described above, Coordinates are randomly generated for Event Objects as integers between -10 and 10, but with no regard for whether they overlap.


## How would you change your program if you were working with a much larger world size?

I would try to change the assumptions I made; by limiting the coordinate options to Integers, and having only a certain amount of Event and
Ticket numbers hard-coded into the software, it would be more readily available to handle larger amounts of information.

When approaching the task, I initially thought of using a database but decided against it, wanting to limit my software's dependencies. However if I were to use a much larger world, I think using a Database would be a must as a lot of the ways in which the methods transfer information between classes in my software could be streamlined by making database calls.

I would also use Sinatra or a similar framework to make the software a web application. This would give me the added advantage of being able to streamline the UX with HTML and CSS, but also be able to take the User Location Coordinates through the browser and give the User a search that relates to the world they live in.

In the interest of UX and a larger world size, it would be cool to have a grid the User could see that shows their location with respect to the nearest events around them. Using Sinatra would allow a clearer version of this than a REPL environment does, and it would also be easier for the User to trust the software this way. Especially when calculating the manhattan_distance with negative coordinates, it's hard to undertand the calculation without a visual representation of it (or at least I found when coding). Having a grid might help illuminate how a manhattan_distance works for the user, if they're unfamiliar with the method, like I was when starting this challenge.



-WOuld we even use MD?
