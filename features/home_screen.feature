@home_screen
Feature: Tests for Home screen functionality

  @default @wip
  Scenario: Default values on Home screen are Foot and Centimeter
    Given I land on Home screen
    Then Left Unit picker value should be "Foot"
    And Right Unit picker value should be "Centimeter"

  Scenario: Show All button should be enabled at launch
    Given I land on Home screen
    Then Show All button should be enabled
    When I press on Clear button
    Then Show All button should be disabled

  @conversions
  Scenario Outline: Verify default conversion
    Given I land on Home screen
    When I type "<target>" to target text field
    Then I should see result as "<result>"
  Examples:
    | target | result |
    | 1      | 12     |
    | 2      | 24     |
    | 3      | 36     |
    | 9      | 106    |
