# March 25, 2025

# Find the index of the first name that starts with "Be"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

p flintstones.find_index {|name| name.start_with?("Be") }

p flintstones.index { |name| name[0, 2] == "Be" }