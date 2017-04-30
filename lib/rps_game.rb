class RPSGame

  attr_reader :choices, :player_1_choice, :player_2_choice

  def initialize(choices)
    @choices = choices
    @player_1_choice = nil
    @player_2_choice = nil
  end

  def game_choices
    choices.list
  end

  def update_player_1_choice(choice)
    self.player_1_choice = choice.to_sym
  end

  def update_player_2_choice(choice)
    self.player_2_choice = choice.to_sym
  end

  def outcome
    return "draw" if player_1_choice == player_2_choice

    if player_1_win?
      "player_1"
    else
      "player_2"
    end
  end

  def player_1_win?
    winning_hash=Choices::CHOICES
    a = winning_hash[player_1_choice]
    a.include?(player_2_choice)
  end



  private
  attr_writer :player_1_choice, :player_2_choice

end
