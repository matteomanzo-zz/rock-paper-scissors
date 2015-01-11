Feature: Play the game
  As a registered player
  In order to play the game
  I want to choose an option

  Scenario: Select an option
    Given I am on New Game
    When I fill in "game" with "rock"
    When I fill in "game2" with "scissors"
    And I press "play" within "submit"
    Then I should see "And the winner is.." within "result"
    And I should see "You won! rock beats scissors" within "result"