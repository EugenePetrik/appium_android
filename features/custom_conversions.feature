@custom_conversions
Feature: User able to create and manage custom conversions

  Scenario: User able to create new conversion
    Given I land on Home screen
    Then I press on Menu icon
    And I press on My conversions button
    And I press on Create your first conversion
    And I type "Power" as custom conversion name
    When I press on New unit button
    Then I type "Horse power" as unit name
    And I type "HP" as unit symbol
    And I type "1" as unit value
    And I press submit checkmark on Custom Conversion screen
    When I press on New unit button
    Then I type "Mule power" as unit name
    And I type "MP" as unit symbol
    And I type "0.5" as unit value
    And I press submit checkmark on Custom Conversion screen
    When I press on OK button on Custom Conversion screen
    Then I verify "Power" added to Custom conversions list
