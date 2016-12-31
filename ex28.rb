puts true && true #true
puts false && true #false
puts 1==2 && 2==1 #false
puts ""
puts "test" == "test" #hopefully true, unless ruby does something kooky with this
puts 1==1 || 2 != 1 #true
puts true && 1 == 1 #true
puts ""
puts false && 0 != 0 #false
puts true || 1 == 1 #true
puts "test" == "testing" #false
puts ""
puts 1 != 0 && 2 == 1 #false
puts "test" != "testing" #true
puts "test" == 1 #false
puts ""
puts !(true && false) #true
puts !(1 == 1 && 0 != 1) #false
puts !("testing" == "testing" && "Zed" == "Cool Guy") #true
puts ""
puts 1 == 1 && (!("testing" == 1 || 1 == 0)) #true
puts "chunky" == "bacon" && (!(3 == 4 || 3 == 3)) #false
puts 3 == 3 && (!("testing" == "testing"  || "Ruby" == "Fun")) #false
puts (0 || 0).to_s
