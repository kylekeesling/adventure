require_relative 'character'

class Elf < Character
  def twinkle
    puts "I'm super magical!"
  end

  def heal
    @health += 8 # it's easier to heal when you're magic
  end
end
