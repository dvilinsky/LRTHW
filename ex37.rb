#this is here to be a sandbox wherein I play with ruby keywords


def out
  puts "This is a function"
end

out
alias longassname out
longassname

#foo = out or raise "This language has a weird syntax"

someval = $stdin.gets.chomp

case someval.to_i
when 90..100
  puts "Good job!"
when 80..89
  puts "That's still pretty good!"
end

(0..100).each do |i|
  if i % 2 == 0
    next #so basicallyl ike a continue statement
  else
    print "#{i}  "
  end
end

(20..100).each {|i| puts i if i%2==0}
