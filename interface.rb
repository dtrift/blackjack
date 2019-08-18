require_relative 'player.rb'
require_relative 'dealer.rb'
require_relative 'deck.rb'

class Interface

def welcome
    puts
    puts " ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ "
    puts " +         A♡ K♡                                                    + "
    puts " +    ---           ---    ---   |  *     --    ---    ---   |  *   + "
    puts " +   |   |  |      |   |  |   |  |*         |  |   |  |   |  |*     + "
    puts " +   |---   |      |   |  |      |          |  |   |  |      |      + "
    puts " +   |   |  |      |---|  |   |  |*    |    |  |---|  |   |  |*     + "
    puts " +    ---    ----  |   |   ---   |  *   ----   |   |   ---   |  *   + "
    puts " +                                                                  + "
    puts " ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ "
    puts
    puts "Добро пожаловать в игру Blackjack!"
  end

  def player_name
    print "Как тебя зовут?: "
    gets.chomp.capitalize
  end

  def player_choice
    puts "Следующее действие:"
    puts "1. Пропустить"
    puts "2. Добавить карту"
    puts "3. Открыть карты"
    print "Выбор: "
    gets.chomp.to_i
  end

  def one_more_game
    puts "Играем дальше?"
    puts "1. Да | 2. Нет"
    print "Выбор: "
    gets.chomp.to_i
  end

  def blackjack
    puts "**************"
    puts "* BALCKJACK! *"
    puts "**************"
  end

  def show_player_cards(player)
    puts
    puts "Карты #{player.name}: #{player.hand.current_cards}"
    # puts "Сумма: #{player.score}"
    puts "-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-"
    puts "Карты дилера: ************"
    puts "Сумма: **"
    puts
  end

  def open_cards(player, dealer)
    puts
    puts "Карты #{player.name}: #{player.current_cards}"
    puts "Сумма: #{player.score}"
    puts "-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-"
    puts "Карты дилера: #{dealer.current_cards}"
    puts "Сумма: #{dealer.score}"
    puts
  end

  def balance_info(player, dealer, bank)
    puts
    puts "| Ставка $10 |"
    puts
    puts "| Баланс | #{player.name}: $#{player.money} | Дилер: $#{dealer.money} | Банк $#{bank} |"
    puts
  end

  def player_win(player)
    puts "#{player.name} ты выиграл!"
  end

  def player_lost(player)
    puts "#{player.name} ты проиграл!"
  end

  def draw
    puts "Ничья!"
  end
    
  def gg(player)
    puts "GG BB #{player.name}!"
    exit
  end

end
