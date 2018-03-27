class Hamming
  attr_reader :dna_stand
  def initialize(dna_stand)
    nucleotide = dna_stand
  end

  def self.compute(new_strand, nucleotide)
    strand1 = nucleotide.chars
    strand2 = new_strand.chars

    count1 = strand1.length
    count2 = strand2.length

    if count1 != count2
      raise ArgumentError.new("Strands must be equal in length")
    else
      x = 0
      count1.times do |i|
        if strand1[i] != strand2[i]
          x += 1
        end
      end
      return x
    end
  end
end
