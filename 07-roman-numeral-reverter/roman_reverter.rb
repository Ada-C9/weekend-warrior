# This program converts Roman numerals to their Arabic number equivalents.
class Roman

  # Stores each Roman numeral and it's Arabic number equivalent.
  @@conversion =
    { "I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500,
    "M" => 1000}

  # Returns the Arabic number equivalent of the provided roman_num.
  def self.reverter(roman_num)
    return reverter_helper(roman_num.split(//), 0)
  end

  private

  # If provided roman_num is empty or has only one Roman numeral in it, returns
  # the provided arabic_num, after adding the last Roman numeral to it in the
  # case a roman_num with size of one. Otherwise, calculates the next Arabic
  # number equivalent in roman_num, adds that value to arabic_num, and returns
  # self.
  def self.reverter_helper(roman_num, arabic_num)
    return arabic_num if roman_num.empty?
    return arabic_num += @@conversion[roman_num.pop] if roman_num.size == 1
    curr_digit = @@conversion[roman_num.pop]
    if curr_digit > @@conversion[roman_num.last]
      arabic_num += (curr_digit - @@conversion[roman_num.pop])
    else
      arabic_num += curr_digit
    end
    return reverter_helper(roman_num, arabic_num)
  end

end
