require "./tutorial.rb"

def intro
  puts "Would you like to enter? (yes/no)"
  answer = gets.chomp.downcase

  #start game
  if answer == "yes" or answer == "y"
    puts "You have chosen wisely."
    sleep(3)
    system "clear"
    start_game()

  #exit game
  elsif answer == "no" or answer == "n"
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
# Character select fucktion
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
# Paladin select fucktion
def paladin_select
  puts "The Paladin... A warrior of god, strong in conviction."
  puts "Paladins have the ability to temporarily increase 1 stat"
  puts "for 4 hours, this can be rejewed through prayer"
  sleep (3)
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
  when "1"
    @char_class = "paladin"
    puts "Good job, you chose the worst class"
    puts "please enter a name for your Paladin."
    name = gets.chomp
    puts "Welcome to the Order of the Dragon, #{name}."
    sleep(3)
    system "clear"
    tutorial_mission()
  when "2"
    system "clear"
    char_select()
  when "3"
    puts "¯\\_(ツ)_/¯"
    sleep(3)
    system "exit"
  else
    puts "Input not recognized."
    system "clear"
    paladin_select()
  end
end
# Ranger select fucktion
def ranger_select
  puts "The Ranger... He is both one with the forest, and with death"
  puts "as he walks the Misty forest floor with his bow & arrow."
  puts "Rangers have the ability to use Camouflage, and Feign Death"
  sleep (3)
  puts ""
  puts "Stats for Ranger."
  puts "Perception: 10"
  puts "Strength: 6"
  puts "Constitution: 8"
  puts "Charisma: 1"
  puts "Intelligence: 8"
  sleep(3)
  puts ""

  puts "Select Ranger (1)"
  puts "Return to character select (2)"
  puts "go fuck yourself (3)"

  answer = gets.chomp

  case answer
  when "1"
    @char_class = "ranger"
    puts "Good job, you chose the worst class"
    puts "please enter a name for your Ranger."
    name = gets.chomp
    puts "Welcome to the The Hunters Guild, #{name}."
    sleep(3)
    system "clear"
    tutorial_mission()
  when "2"
    system "clear"
    char_select()
  when "3"
    puts "¯\\_(ツ)_/¯"
    sleep(3)
    system "exit"
  else
    puts "Input not recognized."
    system "clear"
    paladin_select()
  end
end
# Diplomat select fucktion
def diplomat_select
  puts "The Diplomat... He is famous for being extremely skilled in speech."
  puts "Rarely will you ever find the Diplomat on someone's bad side."
  puts "Diplomats are given more conversation options in game."
  sleep (3)
  puts ""
  puts "Stats for Diplomat."
  puts "Perception: 1"
  puts "Strength: 2"
  puts "Constitution: 6"
  puts "Charisma: 10"
  puts "Intelligence: 7"
  sleep(3)
  puts ""

  puts "Select Diplomat (1)"
  puts "Return to character select (2)"
  puts "go fuck yourself (3)"

  answer = gets.chomp

  case answer
  when "1"
    @char_class = "diplomat"
    puts "Good job, you chose the worst class"
    puts "please enter a name for your Diplomat."
    name = gets.chomp
    puts "Welcome to the Enclave of the Architects, #{name}."
    sleep(3)
    system "clear"
    tutorial_mission()
  when "2"
    system "clear"
    char_select()
  when "3"
    puts "¯\\_(ツ)_/¯"
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
