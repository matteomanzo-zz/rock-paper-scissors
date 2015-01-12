Feature: Play the game
  As a registered player
  In order to play the game
  I want to choose an option

  Scenario: Select rock against scissors
    Given I am on admin
    When I fill in "game" with "rock"
    When I fill in "game2" with "scissors"
    And I press "play"
    Then I should see "And the winner is.."
    And I should see "You won!! rock beats scissors"

  Scenario: Select rock against paper
    Given I am on admin
    When I fill in "game" with "rock"
    When I fill in "game2" with "paper"
    And I press "play"
    Then I should see "And the winner is.."
    And I should see "You lose.. paper beats rock"

  Scenario: Select paper against rock
    Given I am on admin
    When I fill in "game" with "paper"
    When I fill in "game2" with "rock"
    And I press "play"
    Then I should see "And the winner is.."
    And I should see "You won!! paper beats rock"

  Scenario: Select paper against scissors
    Given I am on admin
    When I fill in "game" with "paper"
    When I fill in "game2" with "scissors"
    And I press "play"
    Then I should see "And the winner is.."
    And I should see "You lose.. scissors beats paper"

  Scenario: Select scissors against rock
    Given I am on admin
    When I fill in "game" with "scissors"
    When I fill in "game2" with "rock"
    And I press "play"
    Then I should see "And the winner is.."
    And I should see "You lose.. rock beats scissors"

  Scenario: Select scissors against paper
    Given I am on admin
    When I fill in "game" with "scissors"
    When I fill in "game2" with "paper"
    And I press "play"
    Then I should see "And the winner is.."
    And I should see "You won!! scissors beats paper"

  Scenario: Select scissors against scissors
    Given I am on admin
    When I fill in "game" with "scissors"
    When I fill in "game2" with "scissors"
    And I press "play"
    Then I should see "And the winner is.."
    And I should see "You tied with the computer!!"
    And I should see "You chose scissors and he did the same!!"

  Scenario: Select rock against rock
    Given I am on admin
    When I fill in "game" with "rock"
    When I fill in "game2" with "rock"
    And I press "play"
    Then I should see "And the winner is.."
    And I should see "You tied with the computer!!"
    And I should see "You chose rock and he did the same!!"

  Scenario: Select paper against paper
    Given I am on admin
    When I fill in "game" with "paper"
    When I fill in "game2" with "paper"
    And I press "play"
    Then I should see "And the winner is.."
    And I should see "You tied with the computer!!"
    And I should see "You chose paper and he did the same!!"

  Scenario: Invalid option
    Given I am on admin
    When I fill in "game" with "rew"
    When I fill in "game2" with "eecdw"
    And I press "play"
    Then I should see "And the winner is.."
    And I should see "You entered an invalid option!"

  Scenario: Empty field
    Given I am on admin
    When I fill in "game" with ""
    When I fill in "game2" with ""
    And I press "play"
    Then I should see "And the winner is.."
    And I should see "You entered an invalid option!"