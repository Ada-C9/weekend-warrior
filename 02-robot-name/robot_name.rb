# Completed 2/23/18

# This program creates a robot with a randomly generated name.
class Robot

  attr_reader :name

  def initialize
    @name = ""  # store the robot's name
    reset
  end

  # Reset the name of the robot
  def reset
    @name = get_new_name
  end

  private

  # Returns a randomly generated name with two uppercase letters and three digits
  def get_new_name
    new_name = "#{rand(65..90).chr}#{rand(65..90).chr}#{rand(100..999)}"
    return new_name == @name ? get_new_name : new_name
  end

end
