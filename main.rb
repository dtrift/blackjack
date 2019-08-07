require_relative 'player.rb'
require_relative 'dealer.rb'
require_relative 'deck.rb'

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
  name = gets.chomp.capitalize
  @player = Player.new(name)
  puts "Привет #{@player.name}! На твоем счету $#{@player.money}"
  puts
end

def start_new_game
  @deck.add_cards
  @player.current_cards = []
  @player.score_current_cards = []
  @dealer.current_cards = []
  @dealer.score_current_cards = []
  2.times { one_more_card(@player) }
  2.times { one_more_card(@dealer) }
  blackjack!
  show_player_cards
  put_money_bank
  player_choice
end
  
def blackjack!
  if @player.score == 21
    puts "**************"
    puts "* BALCKJACK! *"
    puts "**************"
    player_win
    open_cards
    one_more_game
  end
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

def show_player_cards
  puts
  puts "Карты #{@player.name}: #{@player.current_cards}"
  puts "Сумма: #{@player.score}"
  puts "-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-"
  puts "Карты дилера: ************"
  puts "Сумма: **"
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
  player_lost && gg if @player.money < 0
  @dealer.money -= 10
  player_win && gg if @dealer.money < 0
  @bank += 20
  balance_info
end


def one_more_card(gamer)
  card = @deck.first_card
  gamer.current_cards << card[:card]
  if card[:value] == 11 && score(gamer) + card[:value] > 21
    gamer.score_current_cards << 1
  else
    gamer.score_current_cards << card[:value]
  end
end

def skip
  one_more_card(@dealer) if @dealer.score <= 17 && @dealer.current_cards.length <= 2
end

def open_cards
  puts
  puts "Карты #{@player.name}: #{@player.current_cards}"
  puts "Сумма: #{@player.score}"
  puts "-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-"
  puts "Карты дилера: #{@dealer.current_cards}"
  puts "Сумма: #{@dealer.score}"
  puts
  result
  one_more_game
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
  
def score(gamer)
  gamer.score_current_cards.sum
end

def result
  if @player.score < 22 && @dealer.score < 22 &&
    @player.score > @dealer.score
    player_win
  elsif 
    @player.score < 22 && @dealer.score > 21 
    player_win
  elsif
    @player.score < 22 && @dealer.score < 22 &&
    @player.score < @dealer.score
    player_lost
  elsif
    @player.score > 21 && @dealer.score < 22
    player_lost
  else
    draw
  end
end
  
def player_win
  puts "#{@player.name} ты выиграл!"
  @player.money += @bank
end

def player_lost
  puts "#{@player.name} ты проиграл!"
  @dealer.money += @bank
end

def draw
  puts "Ничья!"
  @player.money += @bank/2
  @dealer.money += @bank/2
end
  
def gg
  puts "GG BB #{@player.name}!"
  exit
end

welcome
get_player_name
start_new_game
