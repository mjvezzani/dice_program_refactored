def set_dice_categories
  @foursd, @sixsd, @eightsd, @tensd, @twelvesd, @twentysd = [], [], [], [], [], []
end

def categorize_dice
  @dice_set.each do |die|
    case die.type
      when 'four sided die'
        @foursd << die
      when 'six sided die'
        @sixsd << die
      when 'eight sided die'
        @eightsd << die
      when 'ten sided die'
        @tensd << die
      when 'twelve sided die'
        @twelvesd << die
      when 'twenty sided die'
        @twentysd << die
    end
  end
end

def show_what_user_has
  puts "You currently have:"
  puts "4-sided die: #{@foursd.length}" if @foursd.length > 0
  puts "6-sided die: #{@sixsd.length}" if @sixsd.length > 0
  puts "8-sided die: #{@eightsd.length}" if @eightsd.length > 0
  puts "10-sided die: #{@tensd.length}" if @tensd.length > 0
  puts "12-sided die: #{@twelvesd.length}" if @twelvesd.length > 0
  puts "20-sided die: #{@twentysd.length}" if @twentysd.length > 0
end
