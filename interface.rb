# frozen_string_literal: true

class Interface
  def welcome
    puts
    puts ' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ '
    puts ' +         A♡ K♡                                                    + '
    puts ' +    ---           ---    ---   |  *     --    ---    ---   |  *   + '
    puts ' +   |   |  |      |   |  |   |  |*         |  |   |  |   |  |*     + '
    puts ' +   |---   |      |   |  |      |          |  |   |  |      |      + '
    puts ' +   |   |  |      |---|  |   |  |*    |    |  |---|  |   |  |*     + '
    puts ' +    ---    ----  |   |   ---   |  *   ----   |   |   ---   |  *   + '
    puts ' +                                                                  + '
    puts ' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ '
    puts
    puts 'Добро пожаловать в игру Blackjack!'
    puts
  end

  def player_name
    print 'Как тебя зовут?: '
    gets.chomp.capitalize
  end

  def hello(player)
    puts
    puts "Привет #{player.name}, твой баланс $#{player.money}"
    puts 'GL HF'
  end

  def player_choice
    puts
    puts 'Следующее действие:'
    puts '1. Пропустить'
    puts '2. Добавить карту'
    puts '3. Открыть карты'
    print 'Выбор: '
    gets.chomp.to_i
  end

  def one_more_game
    puts 'Играем дальше?'
    puts '1. Да | 2. Нет'
    print 'Выбор: '
    gets.chomp.to_i
  end

  def blackjack
    puts '**************'
    puts '* BALCKJACK! *'
    puts '**************'
  end

  def show_player_cards(player, player_interface_cards)
    puts
    puts "Карты #{player.name}: #{player_interface_cards.join(', ')}"
    puts "Сумма: #{player.hand.score}"
    puts '-~-~-~-~-~-~-~-~-~-~-~-~-~-'
    puts 'Карты дилера: ************'
    puts 'Сумма: **'
    puts
  end

  def open_cards(player, dealer, player_interface_cards, dealer_interface_cards)
    puts
    puts "Карты #{player.name}: #{player_interface_cards.join(', ')}"
    puts "Сумма: #{player.hand.score}"
    puts '-~-~-~-~-~-~-~-~-~-~-~-~-~-'
    puts "Карты дилера: #{dealer_interface_cards.join(', ')}"
    puts "Сумма: #{dealer.hand.score}"
    puts
  end

  def balance_info(player, dealer, bank)
    puts
    puts '| Ставка $10 |'
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
    puts 'Ничья!'
  end

  def gg(player)
    puts "GG BB #{player.name}!"
    exit
  end
end
