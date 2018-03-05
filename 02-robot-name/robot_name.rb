NUMBER_OF_NUMERICAL_CHARACTERS = 3
NUMBER_OF_ALPHA_CHARCTERS = 2

class Robot
  attr_reader :name

  def initialize
    @name = robot_name_generator
  end

  def numerical_component
    numbers = ''
    NUMBER_OF_NUMERICAL_CHARACTERS.times do
      numbers += rand(0...9).to_s
    end
    return numbers
  end

  def alpha_characters
    alphabet = ("A".."Z").to_a
    chars = ''
    NUMBER_OF_ALPHA_CHARCTERS.times do
      chars += alphabet[rand(1..alphabet.length-1)]
    end
    return chars
  end

  def robot_name_generator
    robot_name = alpha_characters + numerical_component
  end

  def reset
    @name = robot_name_generator
  end

end
