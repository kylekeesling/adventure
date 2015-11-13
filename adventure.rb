require_relative 'character'
require_relative 'elf'
require_relative 'dwarf'
require_relative 'human'
require_relative 'die'
require_relative 'dragon'

puts "What's your name?"

player_name = gets.chomp

puts "Choose your character type:"
puts "1 - Elf"
puts "2 - Dwarf"
puts "3 - Human"

selection = gets.chomp.to_i
if selection == 1
  player = Elf.new(player_name)
  puts "You chose Elf, let's get started!"
elsif selection == 2
  player = Dwarf.new(player_name)
  puts "You chose Dwarf, let's get started!"
elsif selection == 3
  player = Human.new(player_name)
  puts "You chose Human, let's get started!"
else
  puts "Ok well you obviously can't follow directions so we'll just make you a Human"
  player = Human.new(player_name)
end

die = Die.new
dragon = Dragon.new

puts "You came across an evil dragon. You must defend yourself."

while player.health > 0
  puts "Press any key to attack the dragon"
  user_input = gets.chomp
  user_roll = die.roll
  dragon_roll = die.roll

  if user_roll > dragon_roll
    dragon.injure(3)
    puts "You hit the dragon and delivered #{3} damage! His health is now #{dragon.health}"
    if dragon.health < 1
      puts "You slayed the dragon. Great job!"
      exit
    end
  else
    player.injure(5)
    puts "The dragon hit you delivered #{5} damage! Your health is now #{player.health}"
    if player.health < 1
      puts "The dragon won. Better luck next time!"
      exit
    end
  end

end
