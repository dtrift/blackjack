require_relative 'player.rb'
require_relative 'dealer.rb'
require_relative 'deck.rb'
require_relative 'game_process.rb'

def welcome
  puts " ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ "
  puts " +         A♡ K♡                                                    + "
  puts " +    ---           ---    ---   |  *     --    ---    ---   |  *   + "
  puts " +   |   |  |      |   |  |   |  |*         |  |   |  |   |  |*     + "
  puts " +   |---   |      |   |  |      |          |  |   |  |      |      + "
  puts " +   |   |  |      |---|  |   |  |*    |    |  |---|  |   |  |*     + "
  puts " +    ---    ----  |   |   ---   |  *   ----   |   |   ---   |  *   + " 
  puts " +                                                                  + "
  puts " ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ "
end

deck_first = Deck.new
welcome
deck_first.add_item
puts deck_first.cards
puts
puts "#{deck_first.random_card}"
puts "#{deck_first.random_card}"
puts "#{deck_first.random_card}"
puts "#{deck_first.random_card}"
puts "#{deck_first.random_card}"
puts "#{deck_first.random_card}"
puts "#{deck_first.random_card}"
puts "#{deck_first.random_card}"
puts "#{deck_first.random_card}"
puts "#{deck_first.random_card}"

