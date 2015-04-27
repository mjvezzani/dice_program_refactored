def welcome_user
  puts "What is your name?"
  name = gets.chomp
  puts "Welcome to the Dungeons and Dragons Dice Roller Program, #{name}."
  sleep(1.5)
  puts "Please choose from the following menu:"
end
