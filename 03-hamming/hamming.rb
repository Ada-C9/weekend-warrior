class Hamming
  def self.compute(stra,strb)
    raise ArgumentError if stra.length != strb.length

    if stra == strb
      return 0
    end


    n = 0
    i = 0
    stra.length.times do
      if stra[i] == strb[i]
        i += 1
      else
        n += 1
        i += 1
      end
    end
    return n
  end

end

#puts Hamming.compute("aaab", "bbba")
