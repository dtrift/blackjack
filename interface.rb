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
  
  def blackjack(player, dealer)
    puts "**************"
    puts "* BALCKJACK! *"
    puts "**************"
  end

  def player_choice
    loop do
      puts "Следующее действие:"
      puts "1. Пропустить"
      puts "2. Добавить карту"
      puts "3. Открыть карты"
      print "Выбери пункт: "
      choice = gets.chomp.to_i
      case choice
      when 1
        skip
        open_cards
      when 2
        one_more_card(@player) if @player.current_cards.length <= 2
        skip
        open_cards
      when 3
        open_cards
      else
        puts "Выбери 1, 2 или 3"
      end
    end
  end

  def show_player_cards(player)
    puts
    puts "Карты #{player.name}: #{player.current_cards}"
    puts "Сумма: #{player.score}"
    puts "-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-"
    puts "Карты дилера: ************"
    puts "Сумма: **"
    puts
  end

  def balance_info(player, dealer, bank)
    puts
    puts "| Ставка $10 |"
    puts
    puts "| Баланс | #{player.name}: $#{player.money} | Дилер: $#{dealer.money} | Банк $#{bank} |"
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
    
  def one_more_game
    loop do
      puts "Играем дальше?"
      puts "1. Да"
      puts "2. Нет"
      print "Выбор: "
      choice = gets.chomp.to_i
      case choice
      when 1 
        start_new_game
      when 2
        gg
      end
    end
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
