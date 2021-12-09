McBenis
def tutorial_enter_misty_step
  weapon = "Glaive"
  system "clear"
  puts "You gather your pack and #{weapon} as you pay the carriage driver"
  puts "his coin, and proceed to head into the Misty Step."
  sleep(2)
  puts "As you open the door, you see a bustling tavern full of hunters"
  puts "and loggers drinking the local brew and feasting on venison."
  puts "You can see quite obviously that the hunters and loggers don't"
  puts "care for eachother, yet they share the same tavern."
  puts "Most everyone gives you a weird look when you enter as they don't"
  puts "see many outsiders, but they quickly return about their business..."
  sleep(3)
  puts "Would you like to:"
  puts "Speak to the barkeep (1)"
  puts "Toss a coin to the bard (2)"
  puts "Leave the Misty Step (3)"
  answer = gets.chomp
    case answer
    when "1"
      tutorial_speakto_barkeep()
    when "2"
      tutorial_tip_bard()
    when "3"
      tutorial_leave_misty_step()
    else
      puts "input not recognized"
      sleep(1.5)
      system "clear"
      tutorial_enter_misty_step()
    end
end

def tutorial_speakto_barkeep
  puts "Welcome traveller! You've found yourself in the finest tavern"
  puts "Misty Hollow has to offer! Not that we try that hard, we're just simply"
  puts "the only tavern in town... My name's Ebrahm, what can I do you for?"
  puts ""
  puts "Order a pint of brew (1)"
  puts "Ask about the town (2)"
  puts "Tell him to fuck off (3)"
  answer = gets.chomp
    case answer
    when "1"
      order_brew()
    when "2"
      tutorial_town_desc()
    when "3"
      get_stabbed()
    else
      puts "input not recognized"
      sleep(1.5)
      system "clear"
      tutorial_speakto_barkeep()
    end
end

def order_brew
  puts "You give Ebrahm a coin in return for a pint"
  puts "You start to feel dizzy, the room starts spinning..."
  puts "A wild Bill Cosby appears!"
  sleep(5)
  tutorial_speakto_barkeep
end

def tutorial_town_desc
  puts "its a fking town"
  sleep(5)
  tutorial_speakto_barkeep
end

def get_stabbed
  puts "You get stabbed and die. Good job fking loser"
  sleep(5)
  system "exit"
end

def examine_misty_step_outer
  puts "it's a tavern retard... you guess what it looks like"
  sleep(3)
  leaving_the_carriage()
end
