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

  def dice
    @selected_dice
  end

  def set_dice_types
    dice.each do |x|
      amount_of_dice_types[x.sides] += 1
    end
  end

end
