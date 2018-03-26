Then(/^Left Unit picker value should be "([^"]*)"$/) do |value|
  actual_picker_text = find_elements(id: "select_unit_spinner")[0].text

  if actual_picker_text != value
    fail("Expected left unit picker value is #{value}, but actual value is #{actual_picker_text}")
  end
end

Then(/^Right Unit picker value should be "([^"]*)"$/) do |value|
  array_of_elements = find_elements(id: "select_unit_spinner")
  actual_picker_text = array_of_elements[1].text

  if actual_picker_text != value
    fail("Expected right unit picker value is #{value}, but actual value is #{actual_picker_text}")
  end
end

Then(/^Show All button should be (enabled|disabled)$/) do |state|
  # puts "Button is #{state}"
  button_state = find_element(id: "btn_show_all").enabled?

  if state == "enabled"
    fail("Expected to be disabled") unless button_state
  elsif state == "disabled"
    fail("Expected to be enabled") if button_state
  end
end

When(/^I press on Clear button$/) do
  puts "Clear button is pressed"
end

When(/^I type "([^"]*)" on application keyboard$/) do |target|
  # puts "Target is #{target}"
  target.split("").each { |i| find_element(id: "keypad").find_element(xpath: "//android.widget.Button[@text = '#{i}']").click }
end

Then(/^I should see result as "([^"]*)"$/) do |result|
  # puts "Result is #{result}"
  value = find_element(id: "target_value").text

  if value != result
    fail("Expected value is #{result}, but actual value is #{value}")
  end
end

Then(/^I press on Add to Favovorites icon$/) do
  find_element(id: "action_add_favorites").click
end

Then(/^I press on Favovorite conversions$/) do
  text("Favorite conversions").click
end

Then(/^I verify "([^"]*)" added to Favovorite conversions list$/) do |unit_type|
  item_text = find_element(id: "favorites_item_hint").text

  if unit_type != item_text
    fail("Cannot find #{unit_type} in Favovorite list}")
  end
end

When(/^I press on search icon$/) do
  find_element(id: "action_search").click

  # one more example: find_element(id: "action_bar").find_element(id: "action_search").click
end

When(/^I type "([^"]*)"$/) do |text|
  find_element(id: "search_src_text").send_keys(text)
end

When(/^I press return button on soft keyboard$/) do
  Appium::TouchAction.new.tap(x: 0.99, y: 0.99, count: 1).perform
end

Then(/^I see "([^"]*)" as a current unit converter$/) do |current_unit|
  find_element(id: "action_bar").find_element(xpath: "//android.widget.TextView[@text = '#{current_unit}']")
end

When(/^I select "([^"]*)" from left unit picker$/) do |value|
  find_elements(id: "select_unit_spinner")[0].click
  find_in_list(value)
end

When(/^I select "([^"]*)" from right unit picker$/) do |value|
  find_elements(id: "select_unit_spinner")[1].click
  find_in_list(value)
end

When(/^I select "([^"]*)" from menu$/) do |value|
  text(value).click
end

When(/^I press on switch units button$/) do
  find_element(id: "img_switch").click
end

Then(/^I should see text "([^"]*)"$/) do |value|
  text(value)
end

Then(/^I verified that (\d+)(?:st|nd|rd|th?) result in history list is "([^"]*)"$/) do |index, text|
  parent_element = find_element(id: "history_conversion_list")
  array_of_elements = parent_element.find_elements(id: "history_single_list")

  actual_text = array_of_elements[index.to_i - 1].find_element(id: "history_item_hint").text

  if actual_text != text
    fail("Expected text id #{text}, actual text is #{actual_text}")
  end
end

When(/^I press delete from history at (\d+)(?:st|nd|rd|th?) row$/) do |index|
  parent_element = find_element(id: "history_conversion_list")
  array_of_elements = parent_element.find_elements(id: "history_single_list")

  array_of_elements[index.to_i - 1].find_element(id: "deleteIcon").click
end
