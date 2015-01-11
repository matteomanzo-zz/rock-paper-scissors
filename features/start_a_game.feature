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

  Scenario: No name given
    Given I am on the homepage
    When I fill in "name" with ""
    And I press "GO!" within "submit"
    Then I should see "Rock, Paper, Scissors!"
    And I should see "You must enter your name, don't be shy!" within "/"

  Scenario: Start the game
    Given I am on the homepage
    When I fill in "name" with "Matteo"
    When I press "GO!" within "submit"
    And I follow "Play!"
    Then I should see "Let's play!"
    And I should see "Choose an option from below: Rock, Paper or Scissors??"