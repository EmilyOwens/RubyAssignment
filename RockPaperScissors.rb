# CSCI 3308: Ruby Assignment 1
# Emily Owens
# Last updated: 1/29/14
#
# Part4: Rock Paper Scissors
class WrongNumberOfPlayersError < StandardError; end

class NoSuchStrategyError < StandardError; end

#Method for checking strategies
def checkStrategy(strategy)
	validStrategies = ['r', 'p', 's']
	if strategy.downcase.match(/#{validStrategies}/)
		return true
	else
		return false	
	end
end
	

def rps_game_winner(game)
	#Define players
	play1 = game[0][1]	#Second element of first array
	play2 = game[1][1]	#Second element of second array
	
	#Check if 2 players
	raise WrongNumberOfPlayersError unless game.length == 2
	#Check if valid strategy
	raise NoSuchStrategyError unless checkStrategy(play1) && checkStrategy(play2)
	
	# All the possible ways for Player 1 to win
	if (play1 + play2 =~ /rs|sp|pr|rr|ss|pp/i)		
		return game[0]
	else
		return game[1]
	end
end


def rps_tournament_winner(tournament)
	# If [0][0] is a string, then it is just a single game
	if tournament[0][0].is_a? String
		rps_game_winner(tournament)
	else
		rps_game_winner( [rps_tournament_winner(tournament[0]), rps_tournament_winner(tournament[1])])
	end

end


p rps_game_winner([ ["Johnny", "P"], ["Sarah", "r"] ])
p rps_game_winner([ ["Johnny", "s"], ["Sarah", "r"] ])

Tournament_bracket =
[

    [

        [ ["Armando", "P"], ["Dave", "S"] ],

        [ ["Richard", "R"],  ["Michael", "S"] ],

    ],

    [

        [ ["Allen", "S"], ["Omer", "P"] ],

        [ ["David E.", "R"], ["Richard X.", "P"] ]

    ]

]

p rps_tournament_winner(Tournament_bracket)
