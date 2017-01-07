states = {
  "Oregon" => "OR",
  "Florida" => "FL",
  "California" => "CA",
  "New York" => "NY",
  "Michigan" => "MI"
}

cities = {
  "CA" => "San Francisco",
  "MI" => "Detroit",
  "FL" => "Jacksonville"
}

cities["NY"] = "New York"
cities["OR"] = "Portland"

puts '-' * 10
puts "Michigan's abbreviation is #{states["Michigan"]}"
puts "Florida's abbreviation is #{states["Florida"]}"

puts "-" * 10
puts "Michigan has #{cities[states["Michigan"]]}"
puts "Florida has #{cities[states["Florida"]]}"

puts "-" * 10
states.each do |state, abbrv|
  puts "#{state} is abbreviated #{abbrv}"
end

puts "-" * 10
cities.each do |abbrv, city|
  puts "#{abbrv} has #{city}"
end

puts "-" * 10
states.each do |state, abbrv|
  city = cities[abbrv]
  puts "#{state} is abbreviated #{abbrv} and has city #{city}"
end

puts "-" * 10
state = states["Texas"]
puts state
if !state
  puts "Sorry, no texas"
end

city = cities["TX"]
city ||= "Does not exist"
puts "The city for the state Texas is #{city}"

puts cities.key?("NYa")
puts cities[:"New York"]
