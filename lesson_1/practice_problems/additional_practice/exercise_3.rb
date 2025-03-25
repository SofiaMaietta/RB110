# March 25, 2025

# In this hash, remove people with age 100 and greater.

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.delete_if { |k, v| v >= 100 }

p ages