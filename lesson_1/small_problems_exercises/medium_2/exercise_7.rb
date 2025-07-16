# April 19, 2025      Unlucky Days

# Write a method that returns the number of Friday the 13ths in the year given by an argument. You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern Gregorian Calendar) and that it will remain in use for the foreseeable future.

require 'date'

def friday_13th(year)
  unlucky_count = 0
  month = 1
  loop do 
    thirteenth = Date.new(year, month, 13) 
    month += 1
    unlucky_count += 1 if thirteenth.friday? 
    break if month > 12
  end 
  unlucky_count
end 

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2