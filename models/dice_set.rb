require_relative './die'

class DiceSet

  attr_reader :selected_dice
  attr_reader :amount_of_dice_types

  def initialize(selected_dice)
    @selected_dice = selected_dice

    @amount_of_dice_types = {4 => 0,
                             6 => 0,
                             8 => 0,
                             10 => 0,
                             12 => 0,
                             20 => 0}
  end

#   def self.create_and_show_dice_set(dice_collection)
#     dice_set = DiceSet.new(dice_collection)
#     puts "Here are your dice:"
#     dice_set.set_dice_types
#     dice_set.show_dice_set
#   end

  def dice
    @selected_dice
  end

  def set_dice_types
    dice.each do |x|
      amount_of_dice_types[x.sides] += 1
    end
  end

  def show_dice_set
    self.amount_of_dice_types.each do |k, v|
      puts "#{k}-sided dice: #{v}" if v > 0
    end
  end

end
