#create a string wherein we can replace what is in the brackets with another string
formatter = "%{first} %{second} %{third} %{fourth}"

#print newline for clarity
puts ""
#first use of the format string. It seems we create a kind of
#map between each element in the format string and something to print
puts formatter % {first: 1, second: 2, third: 3, fourth: 4}
#map each element to "one..."
puts formatter % {first: "one", second: "two", third: "three", fourth: "four"}
#map to alternating booleans, print result
puts formatter % {first: true, second: false, third: true, fourth: false}
#map the format string to the literal version of itself
puts formatter % {first: formatter, second: formatter, third: formatter, fourth: formatter}

#using indentation for clarity
puts formatter % {
    first: "I had this thing.",
    second: "That you could type up right.",
    third: "But it didn't sing.",
    fourth: "So I said goodnight."
}

puts ""
