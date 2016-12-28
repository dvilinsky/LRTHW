#the * tells ruby to put the arguments into a list
def print_two(*args)
    arg1, arg2 = args
    puts "arg1: #{arg1}, arg2: #{arg2}"
end

def print_two_again(arg1, arg2)
    print_two(arg1, arg2)
end

def print_one(arg1)
    puts "arg1: #{arg1}"
end

def print_none()
    puts "I got nothing."
end

print_two("Daniel") #so I guess we just get an empty #arg2 above if we only have one argument
print_two_again("Daniel", "Vilinsky")
print_one("First!")
print_none()
