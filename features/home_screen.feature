@home_screen
Feature: Tests for Home screen functionality

  Background:
    Given I land on Home screen

  Scenario: Default values on Home screen are Foot and Centimeter
    Then Left Unit picker value should be "Foot"
    And Right Unit picker value should be "Centimeter"

  Scenario: Show All button should be enabled at launch
    Then Show All button should be disabled
    When I type "1" on application keyboard
    Then Show All button should be enabled

  Scenario Outline: Verify default conversion
    When I type "<target>" on application keyboard
    Then I should see result as "<result>"
    Examples:
      | target | result    |
      | 1      | 30.48     |
      | 2      | 60.96     |
      | 3      | 91.44     |
      | 9      | 274.32    |
      | 10     | 304.8     |
      | 1011   | 30 815.28 |

  Scenario: User able to add current conversion to Favovorites list
    Then I press on Add to Favovorites icon
    When I press on Menu icon
    Then I press on Favovorite conversions
    And I verify "Length" added to Favovorite conversions list

  Scenario: User able to search by existing Conversion type
    When I press on search icon
    And I type "Temperature"
    And I press return button on soft keyboard
    Then I see "Temperature" as a current unit converter
    Then Left Unit picker value should be "Celsius"
    And Right Unit picker value should be "Fahrenheit"

  Scenario Outline: User able to select values from unit pickers
    When I select "<unit_type>" from left unit picker
    And I type "<amount>" on application keyboard
    Then I should see result as "<result>"
    Examples:
      | unit_type | amount | result  |
      | Inch      | 1      | 2.54    |
      | Link      | 1      | 20.1168 |

  Scenario: User able to convert values
    When I press on Menu icon
    And I select "Volume" from menu
    And I select "Cup" from right unit picker
    And I type "1" on application keyboard
    Then I should see result as "15.1416"

  Scenario: User able to switch values
    Then Left Unit picker value should be "Foot"
    And Right Unit picker value should be "Centimeter"
    When I press on switch units button
    Then Left Unit picker value should be "Centimeter"
    And Right Unit picker value should be "Foot"

  Scenario: User able to cleanup conversion history
    When I press on Menu icon
    And I select "History" from menu
    Then I see "History" as a current unit converter
    And I should see text "No history right now"
    When I press on Menu icon
    And I select "Length" from menu
    And I type "1" on application keyboard
    And I press on Menu icon
    And I select "History" from menu
    Then I verified that 1st result in history list is "Length"
    When I press delete from history at 1st row
    Then I should see text "No history right now"
