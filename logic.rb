require_relative 'hand.rb'
require_relative 'card.rb'

class Logic

  attr_accessor :interface, :player, :dealer, :deck, :hand, :card, :bank

  def initialize(interface, player, dealer)
    @interface = interface
    @player = player
    @dealer = dealer
    @deck = Deck.new
    @hand = Hand.new
    @card = nil
    @bank = 0
  end 

  def blackjack(player, dealer)
    @interface.blackjack(player, dealer) if @player.score == 21
    @interface.player_win(player)
    @interface.open_cards(player, dealer)
    @interface.one_more_game
  end

  def open_cards
    # result
    # one_more_game
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
    if card[:value] == 11 && gamer.score + card[:value] > 21
      gamer.score_current_cards << 1
    else
      gamer.score_current_cards << card[:value]
    end
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
    if
      @player.score > 21 && @dealer.score < 22
      player_lost
    else
      draw
    end
  end

end
