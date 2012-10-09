class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_result(m1, m2)
  # YOUR CODE HERE
end

def rps_game_winner(game)
  # YOUR CODE HERE
	raise WrongNumberOfPlayersError unless game.length == 2
end

def rps_tournament_winner(tournament)
  # YOUR CODE HERE
end
# how will i use this?