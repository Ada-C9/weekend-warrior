# Completed 2/23/18

# Pre: provided year must be an int greater than 0
# Returns true of provided year is a leap year. Otherwise, returns false.
def leap_year?(year)
  return if year.class != Integer  || year < 0
  return year % 100 == 0 ? year % 400 == 0 : year % 4 == 0
end
