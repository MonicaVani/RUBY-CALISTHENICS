#john meehan
class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_result(m1, m2)
  # YOUR CODE HERE
	#see which move wins
	return (m1 + m2) =~ /rs|sp|pr|rr|ss|pp/i  #check if combo is a winner returns true if it is
	#what if it is a draw?
end

def rps_game_winner(game)
  	# YOUR CODE HERE
	raise WrongNumberOfPlayersError unless game.length == 2
	strategy = ["r","p","s"] # array of possible strategys or moves
	raise NoSuchStrategyError unless strategy.include?(game[0][1].downcase) && strategy.include?(game[1][1].downcase)#raise and error if move is not part of the strategy
	
	#takes played moves and check if it is a winning combo
	if rps_result(game[0][1], game[1][1])
		game[0]
	else
		game[1]
	end
end	

def rps_tournament_winner(tournament)
	# takes in a tournament as an array and returns a winner
 	# YOUR CODE HERE
	if tournament.length <= 1
		# if 1 player do nothing?
	elsif tournament.length >=2
		
		# 2 player play normal
	
	puts tlength
	puts tournament
	tournament.each do |round|  
		puts round.length		
		puts rps_game_winner(round)
	end
end
# how will i use this?.



#test dave should win
puts "**** Test Game **** Dave should win with S"
puts rps_game_winner([ ["Armando", "P"], ["Dave", "S"] ])

#test part2 
puts "**** Test Tounrament ****Richard should Win With R"
puts rps_tournament_winner([
    [
        [ ["Armando", "P"], ["Dave", "S"] ],
        [ ["Richard", "R"],  ["Michael", "S"] ],
    ],
    [
        [ ["Allen", "S"], ["Omer", "P"] ],
        [ ["David E.", "R"], ["Richard X.", "P"] ]
    ]
])

#Richard should win with R
