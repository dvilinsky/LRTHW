#get input file from command line argument
input_file = ARGV.first

#function header for print_all, takes argument f,
#which is some fie
def print_all(f)
    #print contents of f to screen
    puts f.read
end

#This function let's a read a file again after it's been
#read through. Parameter: some file f
def rewind(f)
    #"rewind" file back to beginning
    f.seek(0)
end

#Function print_a_line takes a number and a file, and
#hopefully prints that line of the file if this function is
#being uised as intended
def print_a_line(line_count, f)
    #print line_count, then next line of f
    puts "#{line_count}, #{f.gets.chomp}"
end

#create file object with name input_file
current_file = open(input_file)

#print this line
puts "First let's print the whole file:\n"

#call to print_all, which prints the contents of the file
print_all(current_file)

#print this line
puts "Now let's rewind, kind of like a tape."
#call to rewind, allows us to read current_file again
rewind(current_file)

#print this line
puts "Let's print three lines:"

#create index variable, start at 1
current_line = 1
#call to print_a_line, which will print next line of "current_file"
print_a_line(current_line, current_file) #current_line = 1

#increment current_line
current_line += 1 
print_a_line(current_line, current_file) #current_line = 2

#increment again
current_line += 1
print_a_line(current_line, current_file) #current_line = 3

#rewind("String"). Too bad the compiler doesn't catch
