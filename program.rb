### REQUIRE FILES ###

require_relative './models/dice_program'
require_relative './models/dice_set'

### PROGRAM BEGIN ###

program = DiceProgram.new

program.welcome
program.run_dice_selection_menu
program.create_and_show_dice_set
