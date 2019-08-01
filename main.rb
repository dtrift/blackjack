require_relative 'player.rb'
require_relative 'dealer.rb'
require_relative 'deck.rb'
require_relative 'game_process.rb'

def welcome
  puts " ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ "
  puts " +         A♡ K♡                                                      + "
  puts " +    ---           ---    ---   |   *     --    ---    ---   |   *   + "
  puts " +   |   |  |      |   |  |   |  | *         |  |   |  |   |  | *     + "
  puts " +   |---   |      |   |  |      |           |  |   |  |      |       + "
  puts " +   |   |  |      |---|  |   |  | *    |    |  |---|  |   |  | *     + "
  puts " +    ---    ----  |   |   ---   |   *   ----   |   |   ---   |   *   + " 
  puts " +                                                                    + "
  puts " ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ "
end

welcome
