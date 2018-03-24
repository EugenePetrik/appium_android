Feature: Tests for Home screen functionality

  Scenario: Default values on Home screen are Foot and Centimeter
    Given I land on Home screen
    Then Left Unit picker value should be "Foot"
    And Right Unit picker value should be "Centimeter"

  Scenario: Show All button should be enabled at launch
    Given I land on Home screen
    Then Show All button should be disabled
    When I type "1" on application keyboard
    Then Show All button should be enabled

  Scenario Outline: Verify default conversion
    Given I land on Home screen
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
    Given I land on Home screen
    Then I press on Add to Favovorites icon
    When I press on Menu icon
    Then I press on Favovorite conversions
    And I verify "Length" added to Favovorite conversions list

  Scenario: User able to search by existing Conversion type
    Given I land on Home screen
    When I press on search icon
    And I type "Temperature"
    And I press return button on soft keyboard
    Then I see "Temperature" as a current unit converter
    Then Left Unit picker value should be "Celsius"
    And Right Unit picker value should be "Fahrenheit"

  Scenario Outline: User able to select values from unit pickers
    Given I land on Home screen
    When I select "<unit_type>" from left unit picker
    And I type "<amount>" on application keyboard
    Then I should see result as "<result>"
    Examples:
      | unit_type | amount | result  |
      | Inch      | 1      | 2.54    |
      | Link      | 1      | 20.1168 |

  Scenario: User able to convert values
    Given I land on Home screen
    When I press on Menu icon
    And I select "Volume" from menu
    And I select "Cup" from right unit picker
    And I type "1" on application keyboard
    Then I should see result as "15.1416"
