Feature: Start a new game
	As a player
	In order to have fun
	I want to play RPS!

	Scenario: Registering
		Given I am on the homepage
		When I fill in "name" with "Matteo"
		And I press "GO!" within "submit"
    Then I should see "Rock, Paper, Scissors!"
		And I should see "Welcome Matteo! Are you ready to play??" within "/"