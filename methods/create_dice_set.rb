def create_dice_set
  @dice_set = []
  while true
    DICE_MENU.each{|option| puts option}
    dice_menu_choice = gets.chomp.to_i
    dice_menu_choice == 7 ? break : get_dice(dice_menu_choice)
  end
end

@dice_side_hash = {1 => 'four', 2 => 'six', 3 => 'eight', 4 => 'ten', 5 => 'twelve', 6 => 'twenty'}

@dice_side_amount = {}

def get_dice(num)
  puts "How many #{@dice_side_hash[num]} sided dice would you like?"
  @dice_side_amount[num] = gets.chomp.to_i
  puts @dice_side_amount[num]
  add_die_to_set(number: @dice_side_amount[num], type: @dice_side_hash[num])
  show_dice
end

def add_die_to_set(args)
  args[:number].times do
    @dice_set << Die.new(sides: args[:value])
  end
end

def show_dice
  @dice_set.each{|x| puts x.type}
end
