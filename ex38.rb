ten_things = "Apples Oranges Crows Telephone Light Sugar"

puts "Wait there are not then things in that list, let's fix that."

stuff= ten_things.split(' ')
more_stuff = ["Day", "Night", "Song", "Frisbee", "Corn", "Banana", "Girl", "Boy"]

while stuff.length != 10
  next_one = more_stuff.pop
  puts "Adding #{next_one}"
  stuff.push(next_one) #add to end  of stuff
  puts "There are #{stuff.length} items now."
end

puts "There we go: #{stuff}"
puts "Let's do some things with stuff"

puts stuff[1] #corn? Nope oranges
puts stuff[-1] #this will be corn
puts stuff.pop #also corn
puts stuff.join(' ') #I take it this returns a string separated by spaces
puts stuff[3..5].join("#")
