def leap_year?(date)
  is_a_leap_year = false
  if date%4== 0 ||date%100== 0 && date%400 == 0
    is_a_leap_year = true
  end

  return is_a_leap_year
end
