class Robot
  attr_reader :name

  def initialize
    name
  end

  def factory_reset
    @name = nil
  end

  def name
    until @name =~ /^[A-Z]{2}\d{3}$/
      @name = ("A".."Z").to_a.sample(2).join
      @name << (1..10).to_a.sample(3).join
    end
    return @name
  end
end
