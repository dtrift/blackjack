require_relative 'player.rb'
require_relative 'dealer.rb'
require_relative 'deck.rb'
require_relative 'interface.rb'

class Game
  attr_reader :player, :dealer, :interface, :deck

  def initialize
    @player = Player.new
    @dealer = Dealer.new
    @deck = Deck.new
    @interface = Interface.new
    @bank = 0
  end

  def start
    @interface.welcome
    @player.name = @interface.player_name
    new_game
  end

  def new_game
    put_money_bank
    2.times { one_more_card(@player) }
    2.times { one_more_card(@dealer) }
    blackjack
    show_player_cards
    @interface.player_choice
    loop do
      case @interface.player_choice
      when 1
        skip
        open_cards
      when 2
        one_more_card(@player) if @player.current_cards.length <= 2
        skip
        open_cards
      when 3
        open_cards
      # else
      #   puts "Выбери 1, 2 или 3"
      end
    end
  end

  def show_player_cards
    @interface.show_player_cards(@player)
  end

  def balance_info
    @interface.balance_info(@player, @dealer, @bank)
  end

  def open_cards
    @interface.open_cards(@player, @dealer)
  end

  def player_win
    @interface.player_win(@player)
    @player.money += @bank
  end

  def player_lost
    @interface.player_lost(@player)
    @dealer.money += @bank
  end

  def draw
    @interface.draw(@player)
    @player.money += @bank/2
    @dealer.money += @bank/2
  end

  def gg
    @interface.gg(@player)
  end

  def one_more_game
    @interface.one_more_game

  end

  private

  def blackjack
    # if @player.score == 21
    #   @interface.blackjack 
    #   player_win
    #   open_cards
    #   one_more_game
    # end
  end

  # def open_cards
  #   # result
  #   # one_more_game
  # end

  # def start_new_game
  #   @deck.add_cards
  #   @player.current_cards = []
  #   @player.score_current_cards = []
  #   @dealer.current_cards = []
  #   @dealer.score_current_cards = []
  #   2.times { one_more_card(@player) }
  #   2.times { one_more_card(@dealer) }
  #   blackjack!
  #   show_player_cards
  #   put_money_bank
  #   player_choice
  # end

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
    # card = @deck.first_card
    gamer.hand.get_card(@deck.first_card)
    # if card[:value] == 11 && gamer.score + card[:value] > 21
    #   gamer.score_current_cards << 1
    # else
    #   gamer.score_current_cards << card[:value]
    # end
  end

  def skip
    one_more_card(@dealer) if @dealer.score <= 17 && @dealer.current_cards.length <= 2
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
      player_lostels
    elsif
      @player.score > 21 && @dealer.score < 22
      player_lost
    else
      draw
    end
  end

end
