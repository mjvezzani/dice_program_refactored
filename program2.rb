require_relative './models/die'
require_relative './models/dice_set'

dice_menu_selection_array = ['1.) 4-sided dice',
                             '2.) 6-sided dice',
                             '3.) 8-sided dice',
                             '4.) 10-sided dice',
                             '5.) 12-sided dice',
                             '6.) 20-sided dice',
                             '7.) Exit']

puts "Welcome to the D&D dice roller."
puts "Please select your dice"
@dice_collection = []
@menu_choice_dice_side_hash = {1 => 4,
                               2 => 6,
                               3 => 8,
                               4 => 10,
                               5 => 12,
                               6 => 20}

@amount_of_dice_types = {4 => 0,
                         6 => 0,
                         8 => 0,
                         10 => 0,
                         12 => 0,
                         20 => 0}

def get_dice_number(num)
  puts "How many #{@menu_choice_dice_side_hash[num]}-sided dice would you like?"
  amount_choice = gets.chomp.to_i
  amount_choice.times{@dice_collection << Die.new(sides: "#{@menu_choice_dice_side_hash[num]}".to_i)}
end


while true
  dice_menu_selection_array.each{|x| puts x}

  user_choice = gets.chomp.to_i

  user_choice == 7 ? break : get_dice_number(user_choice)
end


dice_set = DiceSet.new(@dice_collection)
puts "Here are your dice:"
#dice_set.set_dice_types
dice_set.dice.each do |x|
  @amount_of_dice_types[x.sides] += 1
end

@amount_of_dice_types.each do |k, v|
  puts "#{k}-sided dice: #{v}" if v > 0
end
