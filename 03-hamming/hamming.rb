# Completed 2/23/18

# This program calculates the points of mutation between two DNA strands.
class Hamming

  # Pre: provided strand_one and strand_two must be String of equal length.
  # Otherwise throws ArgumentError.
  #
  # Returns the number of difference between each index in strand_one and
  # strand_two.
  def self.compute(strand_one, strand_two)
    equal_lengths_or_errors(strand_one, strand_two)
    return calculate_distance(strand_one, strand_two)
  end

  private

  # Compares each index of provided strand_one and strand_two and returns the
  # number of indices they differ.
  def self.calculate_distance(strand_one, strand_two)
    distance = 0
    strand_one.length.times do |index|
      distance += 1 if strand_one[index] != strand_two[index]
    end
    return distance
  end

  # Throws ArgumentError is provided strand_one or strand_two are not Strings.
  def self.equal_lengths_or_errors(strand_one, strand_two)
    if strand_one.length != strand_two.length
      raise ArgumentError.new("Strands must be equal length")
    end
  end
end
