class Game

  attr_reader :options, :throws
  attr_accessor :computer_choice

  def initialize
    @options = { rock: :scissors, paper: :rock, scissors: :paper }
    @throws = options.keys
    @player_one = nil
    @player_two = nil
  end

  def result(player_choice, opponent_choice)
    if player_choice == opponent_choice
      value = "tied"
    elsif player_choice == options[opponent_choice]
      value = "lose"
    elsif opponent_choice == options[player_choice]
      value = "won"
    end
    return value
  end

  def CPU
    throws.sample
  end

  def add_player_one(player)
    @player_one = player1
  end

  def add_player_two(player)
    @player_two = player
  end

  def two_players?
    @player_one != nil && @player_two != nil
  end
end
