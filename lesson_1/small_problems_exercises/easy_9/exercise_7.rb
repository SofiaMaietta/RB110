# March 23, 2025      Grade Book

# Write a method that determines the mean (average) of the three scores passed to it, and returns the letter value associated with that grade. Tested values are all between 0 and 100.

# Numerical Score Letter	Grade
# 90 <= score <= 100	'A'
# 80 <= score < 90	'B'
# 70 <= score < 80	'C'
# 60 <= score < 70	'D'
# 0 <= score < 60	'F'

def get_grade(score1, score2, score3)
  average = (score1 + score2 + score3) / 3
  if average >= 90
    "A"
  elsif average >= 80 
    "B"
  elsif average >= 70
    "C"
  elsif average >= 60
    "D"
  else
    "F"
  end 
end 

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"