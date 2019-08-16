require_relative 'player.rb'
require_relative 'dealer.rb'
require_relative 'deck.rb'
require_relative 'interface.rb'
require_relative 'logic.rb'

class Game
  attr_reader :player, :dealer, :interface, :logic

  def initialize
    @player = Player.new
    @dealer = Dealer.new
    @interface = Interface.new
    @logic = Logic.new(@interface, @player, @dealer)
  end

  def start
    @interface.welcome
    @player.name = @interface.player_name
    balance_info
    @logic.blackjack(@player, @dealer)
  end

  def show_player_cards
    @interface.show_player_cards(@player)
  end

  def balance_info
    @interface.balance_info(@player, @dealer, @logic.bank)
  end

  # def player_choice

  # end

  def open_cards
    @interface.open_cards(@player, @dealer)
  end

  def player_win
    @interface.player_win(@player)
  end

  def player_lost
    @interface.player_lost(@player)
  end

  def draw
    @interface.draw(@player)
  end

  def gg
    @interface.gg(@player)
  end

end
