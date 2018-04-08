
class Robot
  attr_reader :name

  def initialize
    @name = "#{[*('A'..'Z')].sample(2).join}#{rand(100..999)}"
  end

 def reset
   @name = "#{[*('A'..'Z')].sample(2).join}#{rand(100..999)}"
 end
end
