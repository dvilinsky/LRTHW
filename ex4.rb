#number of cars available
cars = 100
#seats in each car
space_in_a_car = 4
#drivers we have today
drivers = 30
#people we need to transport
passengers = 90
#cars sitting idle
cars_not_driven = cars - drivers
#cars that will be driven, not sure if this is totally necessary
cars_driven = drivers
#total number of passengers we can transport
carpool_capacity = cars_driven * space_in_a_car
#number of people per car
average_passengers_per_car = passengers/cars_driven

puts "\nThere are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} passengers to carpool today."
puts "we need to put about #{average_passengers_per_car} in each car.\n\n"
