require "./misty_step.rb"
@driver_token = false

def tutorial_mission
  tutorial_monologue()
end

def tutorial_monologue
  weapon = "Glaive"
  string1 = "As you speed through the misty forrest on a horse driven carriage,"
  string2 = "your bag falls off the seat from the bumps on the road."
  string3 = "The carriage driver calls back in an old gruff voice \"We'll"
  string4 ="be there soon, gather your belongings I dont have time"
  string5 = "for a long stop\". You jump down to hastly pick up your #{weapon} and"
  string6 = "pack. As you settle back onto your seat, you remember that your employer"
  string7 = "said he got you a room in a tavern called the Misty Step."
  string8 = "The idea of having to hunt something down in town sounds pretty"
  string9 = "shit, but given the amount of money on the table it would be hard"
  string10 = "to say no."

  array_of_strings = [string1, string2, string3, string4, string5, string6, string7, string8, string9, string10]

  array_of_strings.each do |line|
    line.each_char do |c|
      putc c
      sleep 0.05
      $stdout.flush
    end
    puts ""
  end


  puts ""
  sleep(4)
  puts""
  puts "The carriage continues into Misty Hollow on it's way to the tavern..."
  sleep(3)
  leaving_the_carriage()
end

def leaving_the_carriage
  puts "The carriage arrives at the Misty Step,"
  sleep(1)
  if @driver_token == false
    puts "Would you like to:"
    puts "Enter the tavern (1)"
    puts "Examine it from the outside first (2)"
    puts "Talk to the carriage driver (3)"
    answer = gets.chomp
    case answer
    when "1"
      tutorial_enter_misty_step()
    when "2"
      examine_misty_step_outer()
    when "3"
      convo_carriage_driver()
    else
      puts "input not recognized"
      sleep(1.5)
      system "clear"
      leaving_the_carriage()
    end
  else
    puts "Would you like to:"
    puts "Enter the tavern (1)"
    puts "Examine it from the outside first (2)"
    answer = gets.chomp
    case answer
    when "1"
      tutorial_enter_misty_step()
    when "2"
      examine_misty_step_outer()
    else
      puts "input not recognized"
      sleep(1.5)
      system "clear"
      leaving_the_carriage()
    end
  end

end


def convo_carriage_driver
  @driver_token = true
  system "clear"
  puts "you approach the carriage driver."
  puts "How would you like to start the conversation:"
  puts "What was your name again?(1)"
  puts "What was the name of this place again?(2)"
  puts "Mind wating for a few minutes?(3)"
  puts "Do you know anything odd about this place(4)"
  puts "leave conversation(5)"
  answer = gets.chomp

  case answer.to_i
  when 1
    puts "My name is Dick VanDick"
    puts "I wish I could say it's been a pleasure to have you"
    puts "have a good night son..."
    sleep(1.5)
    puts "press enter to continue"
    gets
    convo_carriage_driver()
  when 2
    puts "This here is the town of MiStY HoLlOw"
    puts "and we're sitting in front of the misty step"
    puts "the folks  in these parts don't have the brightest"
    puts "minds. You best get on inside"
    sleep(2)
    puts "press enter to continue"
    gets
    convo_carriage_driver()
  when 3
    puts "Do you think I got all day fucker"
    puts "I'm leaving now you ungrateful piece of shit"
    puts "press enter to continue"
    gets
    leaving_the_carriage()
  when 4
    puts "does it look like I live here..."
    puts "boy you are as dumb as you look"
    puts "best get yourself inside before you"
    puts "slip on your own belt and break your neck"
    sleep(3)
    puts "press enter to continue"
    gets
    convo_carriage_driver()
  when 5
    leaving_the_carriage()
  else
    puts "input not recognized"
    convo_carriage_driver()
  end
end
