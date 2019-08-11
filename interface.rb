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

  def get_player_name
    puts "Как тебя зовут?"
    print "Имя: "
    player_name = gets.chomp.capitalize
    @game.player.name = player_name
    # player_name = gets.chomp.capitalize
    # @game.new_player(player_name)
  end

end
