# frozen_string_literal: true

require_relative 'player.rb'
require_relative 'dealer.rb'
require_relative 'deck.rb'
require_relative 'interface.rb'
class Game
  attr_reader :player, :dealer, :interface, :deck, :bank

  def initialize(interface)
    @player = Player.new
    @dealer = Dealer.new
    @interface = interface
    @bank = 0
  end

  def hello
    @interface.hello(@player)
  end

  def start
    @interface.welcome
    @player.name = @interface.player_name
    hello
    new_game
  end

  def new_game
    @deck = Deck.new
    @player.hand = Hand.new
    @dealer.hand = Hand.new
    put_money_bank
    2.times { one_more_card(@player) }
    2.times { one_more_card(@dealer) }
    blackjack
    show_player_cards
    player_choice
  end

  def show_player_cards
    @interface.show_player_cards(@player, interface_cards(@player))
  end

  def balance_info
    @interface.balance_info(@player, @dealer, @bank)
  end

  def open_cards
    @interface.open_cards(@player, @dealer, interface_cards(@player), interface_cards(@dealer))
    result
    one_more_game
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
    @interface.draw
    @player.money += @bank / 2
    @dealer.money += @bank / 2
  end

  def gg
    @interface.gg(@player)
  end

  private

  def interface_cards(gamer)
    show_cards = []
    gamer.hand.current_cards.each do |card|
      show_cards << [card.name, card.suit].join
    end
    return show_cards
  end

  def player_choice
    loop do
      case @interface.player_choice
      when 1
        skip
        open_cards
      when 2
        one_more_card(@player)
        skip
        open_cards
      when 3
        open_cards
      end
    end
  end

  def one_more_game
    loop do
      case @interface.one_more_game
      when 1
        new_game
      when 2
        gg
      end
    end
  end

  def blackjack
    if @player.hand.score == 21
      @interface.blackjack
      player_win
      open_cards
      one_more_game
    end
  end

  def put_money_bank
    @bank = 0
    @player.money -= 10
    player_lost && gg if @player.money.negative?
    @dealer.money -= 10
    player_win && gg if @dealer.money.negative?
    @bank += 20
    balance_info
  end

  def one_more_card(gamer)
    gamer.hand.get_card(@deck.first_card) if gamer.hand.current_cards.length <= 2
  end

  def skip
    one_more_card(@dealer) if @dealer.hand.score <= 17
  end

  def result
    if @player.hand.score < 22 && @dealer.hand.score < 22 &&
      @player.hand.score > @dealer.hand.score
      player_win
    elsif @player.hand.score < 22 && @dealer.hand.score > 21
      player_win
    elsif @player.hand.score < 22 && @dealer.hand.score < 22 &&
      @player.hand.score < @dealer.hand.score
      player_lost
    elsif @player.hand.score > 21 && @dealer.hand.score < 22
      player_lost
    else
      draw
    end
  end
end
