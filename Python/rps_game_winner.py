#!/usr/bin/python3
# Name: Dylan Tu
# Date: 11-12-16
# File: rps_game_winner.py
# Desc: Function to pick winner of RPS games


class WrongNumberOfPlayersError(Exception):
	pass


class NoSuchStrategyError(Exception):
	pass


def rps_game_winner(lst):
	strategies = ['R','P','S']
	states = {
		'R': {
			'R': True,
			'P': False,
			'S': True
		},
		'P': {
			'R': True,
			'P': True,
			'S': False
		},
		'S': {
			'R': False,
			'P': True,
			'S': True
		}
	}
	
	if len(lst) < 2:
		raise (WrongNumberOfPlayersError("Wrong number of players. Must have two to play a match."))
	if lst[0][1] not in strategies or lst[1][1] not in strategies:
		raise (NoSuchStrategyError("No such strategy -- must be P, R, or S."))
	
	if states[lst[0][1]][lst[1][1]]:
		return lst[0]
	else:
		return lst[1]


def _main():
	"""_main() is here for testing the code. _main() will
	be executed when we run this module as as standalone program.
	Try it, like this: python3 rps_game_winner.py
	"""
	
	match = [['Jim', 'R'], ['Jack', 'P']]
	bogus_match = ['Jim', 'R']
	bogus_strategy = [['Jim', 'x'], ['Jack', 'P']]
	# Should print ['Jack', 'P']
	print("The winner is ", end='')
	
	# A known good match
	try:
		print(rps_game_winner(match))
	except:
		print("This test should not fail")
	
	# A known badly formed match
	try:
		rps_game_winner(bogus_match)
	except:
		print("That was a bogus match, dude: ", end="")
		print(bogus_match)
	
	# A known bad strategy
	try:
		rps_game_winner(bogus_strategy)
	except:
		print("That was a bogus strategy, dude: ", end='')
		print(bogus_strategy)


_main()
