class Hamming
  def self.compute(first_strand,second_strand)
  hamming_distance = 0
    if first_strand.length != second_strand.length
      raise ArgumentError.new('DNA strands must be of equal lengs')
    end
    first_strand = first_strand.split('')
    second_strand = second_strand.split('')

  first_strand.each_with_index { |nucleotide,index|
    if nucleotide != second_strand[index]
      hamming_distance+=1
    end
  }


  return hamming_distance
  end

end
