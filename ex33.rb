def buildArray(n, increment=1)
  i = 0
  nums = []

  while i <= n
    puts "At the top i is #{i}"
    nums << i
    i += increment
    puts "Nums is now", nums
    puts "At the bottom i is #{i}"
  end

  puts "The numbers: "
  nums.each{|num| puts num}
end

def buildArrayFor(n)
  i = 0
  nums = []
  (0..n).each do |x|
    puts "At the top i is #{i}"
    nums << x
    i += 1
    puts "Nums is now ", nums
    puts "At the botoom i is #{i}"
  end
end
buildArrayFor(10)
