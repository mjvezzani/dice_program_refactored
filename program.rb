### Werkin on refactoring ./methods/create_dice_set.rb


require_relative './models/die'
require_relative './models/dice_set'
require_relative './methods/welcome'
require_relative './methods/create_dice_set'
require_relative './methods/categorize_what_user_has'
require_relative './constants'

welcome_user

### Give Menu Options
while true

  NAV_MENU.each{|selection| puts selection}

  user_choice = gets.chomp.to_i

  case user_choice
    when 1
      create_dice_set
    when 2 then roll_dice_set
    when 3 then inspect_dice_set
    when 4 then break
  end

end
puts "Thanks for playing!"
