Feature: Play the game
  As a registered player
  In order to play the game
  I want to choose an option

  Scenario: Select rock against scissors
    Given I am on admin
    When I fill in "game" with "rock"
    When I fill in "game2" with "scissors"
    And I press "play" within "submit"
    Then I should see "And the winner is.." within "admin_result"
    And I should see "You won! rock beats scissors" within "admin_result"

  Scenario: Select rock against paper
    Given I am on admin
    When I fill in "game" with "rock"
    When I fill in "game2" with "paper"
    And I press "play" within "submit"
    Then I should see "And the winner is.." within "admin_result"
    And I should see "You lose.. paper beats rock" within "admin_result"

  Scenario: Select paper against rock
    Given I am on admin
    When I fill in "game" with "paper"
    When I fill in "game2" with "rock"
    And I press "play" within "submit"
    Then I should see "And the winner is.." within "admin_result"
    And I should see "You won! paper beats rock" within "admin_result"

  Scenario: Select paper against scissors
    Given I am on admin
    When I fill in "game" with "paper"
    When I fill in "game2" with "scissors"
    And I press "play" within "submit"
    Then I should see "And the winner is.." within "admin_result"
    And I should see "You lose.. scissors beats paper" within "admin_result"

  Scenario: Select scissors against rock
    Given I am on admin
    When I fill in "game" with "scissors"
    When I fill in "game2" with "rock"
    And I press "play" within "submit"
    Then I should see "And the winner is.." within "admin_result"
    And I should see "You lose.. rock beats scissors" within "admin_result"

  Scenario: Select scissors against paper
    Given I am on admin
    When I fill in "game" with "scissors"
    When I fill in "game2" with "paper"
    And I press "play" within "submit"
    Then I should see "And the winner is.." within "admin_result"
    And I should see "You won! scissors beats paper" within "admin_result"

  Scenario: Select scissors against scissors
    Given I am on admin
    When I fill in "game" with "scissors"
    When I fill in "game2" with "scissors"
    And I press "play" within "submit"
    Then I should see "And the winner is.." within "admin_result"
    And I should see "You tied with the computer!!" within "admin_result"
    And I should see "You chose scissors and he did the same!!" within "admin_result"

  Scenario: Select rock against rock
    Given I am on admin
    When I fill in "game" with "rock"
    When I fill in "game2" with "rock"
    And I press "play" within "submit"
    Then I should see "And the winner is.." within "admin_result"
    And I should see "You tied with the computer!!" within "admin_result"
    And I should see "You chose rock and he did the same!!" within "admin_result"

  Scenario: Select paper against paper
    Given I am on admin
    When I fill in "game" with "paper"
    When I fill in "game2" with "paper"
    And I press "play" within "submit"
    Then I should see "And the winner is.." within "admin_result"
    And I should see "You tied with the computer!!" within "admin_result"
    And I should see "You chose paper and he did the same!!" within "admin_result"