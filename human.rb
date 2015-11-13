require_relative 'character'

class Human < Character
  def yell
    puts "I'm #{name}!"
  end

  def heal
    @health += 5
  end
end
