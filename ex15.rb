#give first command line argument to filaname
filename = ARGV.first

#open file object and store it in variable called txt
txt = open(filename)

#print this line
puts "Here's your file #{filename}:"
#print the contents of the file
print txt.read
txt.close()
#newline for clarity
puts ""

#print this line
print "Type the filename again: "
#read name of the file from standard input, truncating newline
file_again = $stdin.gets.chomp

#open/create file object and store it in txt_again
txt_again = open(file_again)
#print contents of file object
print txt_again.read
