# April 21, 2025      Sorting Hashes

# Write code to sort the following array of hashes by the :year key in ascending order:

cars = [
  {make: 'Toyota', model: 'Corolla', year: 2015},
  {make: 'Honda', model: 'Civic', year: 2012},
  {make: 'Ford', model: 'Focus', year: 2018}
]

result = cars.sort_by do |hash|
  hash[:year]
end 

p result