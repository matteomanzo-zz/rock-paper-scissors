class Game

  attr_reader :options, :throws, :computer_choice

  def initialize
    @options = { rock: :scissors, paper: :rock, scissors: :paper }
    @throws = options.keys
  end

  def result(player_choice)
    @computer_choice = throws.sample
    if player_choice == computer_choice
      value = "tied"
    elsif player_choice == options[computer_choice]
      value = "lose"
    elsif computer_choice == options[player_choice]
      value = "won"
    end
    return value
  end
end
