tabby_cat = "\tI'm tabbed in."
persian_cat = "I'm split\non a line."
backslash_cat = "I'm \\ a \\ cat."

fat_cat = """
I\'ll do a list:
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
#{tabby_cat}
"""

puts "\n #{tabby_cat}"
puts persian_cat
puts backslash_cat
puts fat_cat
puts "\v\v\v\v\v\v"

format_string = "%{placeholder}"

puts format_string % {placeholder: """
This is a complex string
"""} + "\t\t Because it uses a lot of Ruby feautes such as #{fat_cat}\n\n"
