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

## Approach // Describe how you approached designing your solution to the problem.

I wanted to follow the example closely, and focus on building a REPL-based entirely to create a piece
of software with minimal dependencies, and is easy to use.
I hoped this would give me greater control over the software, and a better idea of how each part works.

## Structure // Describe how you structured your code. Why did you do it this way?

Domain Driven Design attempted, looked at splitting the nouns and verbs in Scenario into Class and Method ideas.
Eventually had to create event_list and query classes to help manipulate the data.

Please detail any assumptions you have made.
assumes coordinates can be integer only

assumes we only have an option of nine events at a time (convenience, 1-9)

assumes max of 5 tickets, for convenience, can be changed in Event.rb by editing '@r' attribute

## How to Run
# Getting started
Enter the following commands in your terminal to download the program:
- `git clone https://github.com/sim-ware/https://github.com/sim-ware/ViagogoTechTest.git.git`
- cd into the ViagogoTechTest directory
- Please run `bundle` to install the necessary ruby `gemfile` dependencies

# Usage
- Enter the command 'rspec' to run tests
- Type the command `pry` to see an example run of the software
- Enter 'q' in the PRY environment to return entire Query Object containing Random Seeded Data

How might you change your program if you needed to support multiple events at the
same location?
-Remove the Coordinate Duplicate Checker Function
-where located? how does it work? how does it make it easy to solve this problem?
-maybe if i had coded a grid, and actual coordinate objects (which i had thought
  of doing) it would have made it much trickier
-in this instance it's an advantage, but in interest of UX probably better to have
  a grid so user can trust calculation (e.g. Wiki Diagram Explanation of Distance
  easy to understand pictorially, hard to constantly figure it out when coding,
  assume user would feel safer with a picture of the situation)
--if we were to do this, maybe think about a select coordinate function where you
  can see what's going on based on location
-it could have an overall price comparer, instead of just one per Event Object,
  allowing the User to make a decision based on price. How would you Code this?


How would you change your program if you were working with a much larger world
size?

-user location, range of coordinates within city, country?
-adapt manhattan_distance calculation to work with non-grid city
-database
-user_login

# HoneycombTechTest

## The challenge

We have a system that delivers advertising materials to broadcasters.

Advertising Material is uniquely identified by a 'Clock' number e.g.

* `WNP/SWCL001/010`
* `ZDW/EOWW005/010`

Our sales team have some new promotions they want to offer so
we need to introduce a mechanism for applying Discounts to orders.

Promotions like this can and will change over time so we need the solution to be flexible.

### Broadcasters

These are the Broadcasters we deliver to

* Viacom
* Disney
* Discovery
* ITV
* Channel 4
* Bike Channel
* Horse and Country


### Delivery Products

* Standard Delivery: $10
* Express Delivery: $20

### Discounts

* Send 2 or more materials via express delivery and the price for express delivery drops to $15
* Spend over $30 to get 10% off

### What we want from you

Provide a means of defining and applying various discounts to the cost of delivering material to broadcasters.

We don't need any UI for this, we just need you to show us how it would work through its API.

## Examples

Based on the both Discounts applied, the following examples should be valid:

* send `WNP/SWCL001/010` to Disney, Discovery, Viacom via Standard Delivery and Horse and Country via Express Delivery
    based on the defined Discounts the total should be $45.00

* send `ZDW/EOWW005/010` to Disney, Discovery, Viacom via Express Delivery
     based on the defined Discounts the total should be $40.50

## User Stories
```
As a Sales Team Member
So that I can give a client a quote
I'd like to see the price of an order
```
```
As a user
So that I can offer a client a Discounted quote
I'd like to see the Discounted Price of an order
```


This is a ruby program that can be run in irb or pry, which has the following
functionality developed using TDD and using OO principles:

## Getting started
Enter the following commands in your terminal to download the program:
- `git clone https://github.com/sim-ware/HoneycombTechTest.git`
- cd into the HoneycombTechTest directory
- Please run `bundle` to install the necessary ruby `gemfile` dependencies

## Usage
- Type the command `pry`

```
> o = Order.new
 => #<Order:0x007fe70d10f288 @clock="", @standard_del=[], @express_del=[], @price=0, @discount_price=0>

> o.clock_number('WNP/SWCL001/010')
 => "WNP/SWCL001/010"

>o.standard_delivery_companies('Disney', 'Discovery', 'Viacom')
 => ["Disney", "Discovery", "Viacom"]

> o.express_delivery_companies('Horse & County')
 => ["Horse & County"]
> o

 => #<Order:0x007fe70d10f288 @clock="WNP/SWCL001/010", @standard_del=["Disney", "Discovery", "Viacom"], @express_del=["Horse & County"], @price=0, @discount_price=0>  
```
