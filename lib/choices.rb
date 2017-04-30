class Choices

attr_reader :list

def initialize
choices_array = []
CHOICES.each {|k,v| choices_array << k}
@list = choices_array
end



CHOICES =
{
  spock: [:rock, :wizard, :spiderman, :scissors],
  lizard: [:spock, :batman, :glock, :paper],
  wizard: [:batman, :glock, :paper, :lizard],
  batman: [:spiderman, :scissors,:rock, :spock],
  spiderman: [:glock, :paper, :lizard, :wizard],
  glock: [:scissors, :rock, :spock, :batman],
  scissors: [:paper, :lizard, :wizard, :spiderman],
  paper: [:rock, :spock, :batman, :glock],
  rock: [:lizard, :wizard, :spiderman, :scissors]
}

def random_choice
  list.sample
end

def game_size
  list.length
end

end
