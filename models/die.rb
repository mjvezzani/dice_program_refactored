class Die

  attr_reader :sides

  def initialize(args)
    @sides = args[:sides]
  end

  SIDES_HASH = {4 => 'four', 6 => 'six', 8 => 'eight', 10 => 'ten', 12 => 'twelve', 20 => 'twenty'}

  def roll
    rand(1..@sides)
  end

  def type
    "#{SIDES_HASH[sides]}-sided die"
  end

end
