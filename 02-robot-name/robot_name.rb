# Completed 2/23/18

# This program creates a robot with a randomly generated name
class Robot

  attr_reader :name

  def initialize
    @name = ""  # store the robot's name
    reset
  end

  # Reset the name of the robot
  def reset
    @name = create_name
  end

  private

  # Returns a randomly generated name with two uppercase letter and three digits
  def create_name
    return "#{rand(65..90).chr}#{rand(65..90).chr}#{rand(100..999)}"
  end

end
