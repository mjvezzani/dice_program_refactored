require_relative '../constants'
require_relative './die'
require_relative './dice_set'

class DiceProgram

  attr_reader :dice_collection

  def initialize
    @dice_collection = []
    @menu_choice_dice_side_hash = {1 => 4,
                                   2 => 6,
                                   3 => 8,
                                   4 => 10,
                                   5 => 12,
                                   6 => 20}
  end

  def welcome
    puts "Welcome to the D&D dice roller program."
  end

  def run_dice_selection_menu
    while true
      puts "Please select your dice. If you are finished selecting, select 7 to return to main menu."
      DICE_MENU.each{|x| puts x}
      user_choice = gets.chomp.to_i
      user_choice == 7 ? break : get_dice_number(user_choice)
    end
  end

  def get_dice_number(num)
    puts "How many #{@menu_choice_dice_side_hash[num]}-sided dice would you like?"
    amount_choice = gets.chomp.to_i
    amount_choice.times{@dice_collection << Die.new(sides: "#{@menu_choice_dice_side_hash[num]}".to_i)}
  end

  def create_and_show_dice_set
    dice_set = DiceSet.new(dice_collection)
    dice_set.set_dice_types
    puts "Here are your dice:"
    dice_set.show_dice_set
  end
end
