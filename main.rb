require_relative 'player.rb'
require_relative 'dealer.rb'
require_relative 'deck.rb'
require_relative 'game_process.rb'

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
  puts
end

def get_player_name
  puts "Как тебя зовут?"
  print "Имя: "
  @name = gets.chomp.capitalize
  @player = Player.new(@name)
  puts "Привет #{@player.name}! На твоем счету $#{@player.money}"
  puts
end

def start_new_game
  @player.current_cards = []
  @player.score = 0
  @dealer.current_cards = []
  @dealer.score = 0
  2.times { one_more_card(@player) }
  2.times { one_more_card(@dealer) }
  show_cards
  put_money_bank
end

def show_cards
  puts
  puts "Карты #{@player.name}: #{@player.current_cards}"
  puts "Сумма: #{@player.score}"
  puts "-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-"
  puts "Карты дилера: ************ #{@dealer.current_cards}"
  puts "Сумма: ** #{@dealer.score}"
  puts
end

def balance_info
  puts
  puts "| Ставка $10 |"
  puts
  puts "| Баланс | #{@player.name}: $#{@player.money} | Дилер: $#{@dealer.money} | Банк $#{@bank} |"
  puts
end

def put_money_bank
  @bank = 0
  @player.money -= 10
  @dealer.money -= 10
  @bank += 20
  balance_info
end

def next_step
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
      show_cards
    when 2
      one_more_card(@player) if @player.current_cards.length <= 2
      skip
      show_cards
    when 3
      open_cards
    else
      puts "Выбери 1, 2 или 3"
    end
    break if choice = 1..3 
  end
end

def one_more_card(gamer)
  card = @deck.first_card
  gamer.current_cards << card[:card]
  gamer.score += card[:value]
end

def skip
  if @dealer.score <= 17 && @dealer.current_cards.length <= 2
    one_more_card(@dealer)
    open_cards
  else
    open_cards
  end
end

def open_cards

end

def player_win

end

def player_lost

end

welcome
get_player_name
start_new_game
next_step
