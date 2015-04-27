require 'spec_helper'

describe Die do

  before :each do
    @die = Die.new(sides: 4)
  end

  it 'has a number of sides' do
    expect(@die.sides).to eq 4
  end

  it 'has a type' do
    expect(@die.type).to eq 'four-sided die'
  end

  it 'rolls and returns a result' do
    expect(@die.roll).to be <= 4
  end

  it 'does not roll a result greater than its highest number' do
    expect(@die.roll).not_to be > 4
  end

  it 'does not roll a result lower than 1' do
    expect(@die.roll).not_to be < 1
  end
end
