require 'spec_helper'

describe DiceSet do

  it 'has more than one die in it' do
    selected_dice = []
    4.times do
      selected_dice << Die.new(sides:(rand(1..20)))
    end
    dice_set = DiceSet.new(selected_dice)

    expect(dice_set.dice.length).to be 4 
  end

end
