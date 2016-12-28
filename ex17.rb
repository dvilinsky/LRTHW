from_file, to_file = ARGV

puts "The input file is I don't know how many bytes long."
puts "Does the output file exist already on the disk? #{File.exist?(to_file)}"


#as an exercise, putting all the program logic in one line
open(ARGV[1], 'w').write(open(ARGV[0]).read)
#still, I can't figure out how to close the file without
#having a variable name

puts "Alright, all done."
