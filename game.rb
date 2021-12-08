def intro
  puts "Would you like to enter? (yes/no)"
  answer = gets.chomp.downcase

  #start game
  if answer == "yes"
    puts "You have chosen wisely."
    sleep(3)
    system "clear"
    start_game()

  #exit game
  elsif answer == "no"
    puts "You have chosen poorly."
    sleep(3)
    system "clear"
    system "exit"
    #restart intro
  else
    puts "Input not recognized."
    intro()
  end
end

# QUESTION: are you retarded? Yes.

def start_game
  puts "Load game (1)"
  puts "New game (2)"
  answer = gets.chomp
  if answer == "1"
    #brings up saved games select screen
  elsif answer == "2"
    system "clear"
    print "Creating a new game."
    sleep(1)
    print "."
    sleep(1)
    print "."
    sleep(1)
    print "."
    sleep(1.5)
    system "clear"
    char_select()
  else
    start_game()
  end
end

def char_select
  puts "What class would you like to select?"
  puts "Paladin (1)"
  puts "Ranger (2)"
  puts "Diplomat (3)"
  answer = gets.chomp

    case answer
      when "1"
        system "clear"
        paladin_select()
      when "2"
        system "clear"
        ranger_select()
      when "3"
        system "clear"
        diplomat_select()
      else
        puts "Input not recognized."
        system "clear"
        char_select()
    end
end

def paladin_select
  puts "The Paladin... A warrior of god, strong in conviction."
  puts "Paladins have the ability to temporarily increase 1 stat"
  puts "for 4 hours, this can be rejewed through prayer"
  sleep (1)
  puts ""
  puts "Stats for Paladin"
  puts "Perception: 7"
  puts "Strength: 8"
  puts "Constitution: 10"
  puts "Charisma: 4"
  puts "Intelligence: 2"
  sleep(3)
  puts ""

  puts "Select Paladin (1)"
  puts "Return to character select (2)"
  puts "go fuck yourself (3)"

  answer = gets.chomp

  case answer
  when 1
    @char_class = "paladin"
    puts "good job you chose the worst class"
    puts "please enter a name for your paladin"
    name = gets.chomp
    puts "welcome to the order of the dragon #{name}"
  when 2
    system "clear"
    char_select()
  when 3
    puts "¯\_(ツ)_/¯"
    sleep(3)
    system "exit"
  else
    puts "Input not recognized."
    system "clear"
    paladin_select()
  end
end
#code that is run

puts "Welcome to The Misty Hollow."
intro()
