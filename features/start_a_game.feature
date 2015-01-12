Feature: Start a new game
	As a player
	In order start a new game
	I want to register myself!

    Scenario: Registering
      Given I am on the homepage
      When I fill in "name" with "Matteo"
      And I press "GO!"
      Then I should see "Rock, Paper, Scissors! Welcome Matteo! Are you ready to play?"

    Scenario: No name given
      Given I am on the homepage
      When I fill in "name" with ""
      And I press "GO!"
      Then I should see "Rock, Paper, Scissors! Enter your name, please.."

    Scenario: Start the game
      Given I am on the homepage
      When I fill in "name" with "Matteo"
      When I press "GO!"
      And I follow "Play!"
      Then I should see "Let's play! Choose an option from below: Rock, Paper or Scissors??"