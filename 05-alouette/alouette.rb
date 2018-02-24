# This program allows the user to select lines and verses of 'Alouette'. It also
# allows the user to select the entire song.

class Alouette

  # Provided verse_num must be a valid verse number for 'Alouette'. Returns the
  # the individual lines for each verse up to and including verse_num.
  def self.lines_for_verse(verse_num)
    verses =
      ["Et la tête!", "Et le bec!", "Et les yeux!", "Et le cou!",
      "Et les ailes!", "Et les pattes!", "Et la queue!", "Et le dos!"]
    return verse_num.downto(0).map { |index| verses[index] }
  end

  # Provided verse_num must be a valid verse number for 'Alouette'. Returns the
  # verse associated with verse_num.
  def self.verse(verse_num)
    lines = lines_for_verse(verse_num)
    complete_verse = "Alouette!\nAlouette!\nA-a-a-ah"
    verse_num.downto(0) do |index|
      complete_verse = repeat_line(lines[index], complete_verse)
    end
    first_line = format_first_lines(lines[0])
    complete_verse = repeat_line(first_line, complete_verse)
    return complete_verse
  end

  # Returns the entire 'Alouette' song.
  def self.sing
    chorus = "Alouette, gentille alouette,\nAlouette, je te plumerai."
    song = ""
    (0..7).each { |num| song = "#{song}\n\n#{verse(num)}\n\n#{chorus}" }
    song = "#{chorus}#{song}"
    return song
  end

  private

  # Adds provided line to provided verse twice and returns verse.
  def self.repeat_line(line, verse)
    2.times { verse = "#{line}\n#{verse}" }
    return verse
  end

  # Provided line must be the first line of a verse. Changes line to match the
  # pattern of the first line of each verse and returns the changed line.
  def self.format_first_lines(line)
    return "Je te plumerai#{line[2, line.length - 3]}."
  end

end
