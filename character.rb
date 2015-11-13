class Character

  def initialize(name)
    @name = name
    @health = 10
  end

  def health
    @health
  end

  def heal
    @health += 6
  end

  def injure(hit_points=1)
    @health -= hit_points
  end

  def adventure
    if @health > 0
      puts "#{@name} goes on a great adventure and meets a dragon!"
      puts "The dragon hugged #{@name} kind of hard..."
      @health -= 5
    else
      puts "#{@name} is dead :("
      exit
    end
  end

end
