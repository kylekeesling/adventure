require_relative 'character'

class Dwarf < Character
  def grunt
    puts "I'm grumpy!"
  end

  def heal
    @health += 4
  end
end
