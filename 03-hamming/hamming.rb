class Hamming
  attr_reader :dna_stand
  def initialize(dna_stand)
    nucleotide = dna_stand
  end

  def self.compute(new_strand, nucleotide)
    strand1 = nucleotide.chars
    strand2 = new_strand.chars

    count = strand1.length

    count.times do |i|
      x = 0
      if strand1[i] != strand2[i]
        x += 1
      end
      return x
    end
    return x
  end
end
