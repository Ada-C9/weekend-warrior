# Completed 2/24/18

# This program return the DNA equivalent of an RNA sequence and the RNA
# equivalent of a DNA sequence.
class Complement

  # Throws ArgumentError if any character in provided sequence does not have an
  # RNA equivalent
  #
  # Converts provided DNA sequence to RNA.
  def self.of_dna(sequence)
    return convert(sequence, {"G" => "C", "C" => "G", "T" => "A", "A" => "U"})
  end

  # Throws ArgumentError if any character in provided sequence does not have an
  # DNA equivalent
  #
  # Converts provided sequence to DNA.
  def self.of_rna(sequence)
    return convert(sequence, {"C" => "G", "G" => "C", "A" => "T", "U" => "A"})
  end

  private

  # Throws ArgumentError if any character in provided sequence does not have an
  # equivalent from provided conversion_hash.
  #
  # Converts the provided sequence to its RNA or DNA equivalent using the
  # provided conversion_hash.
  def self.convert(sequence, conversion_hash)
    converted_sequence = ""
    sequence.each_char do |char|
      raise ArgumentError.new("Invalid #{char}") if !conversion_hash.has_key?(char)
      converted_sequence << conversion_hash[char]
    end
    return converted_sequence
  end

end
