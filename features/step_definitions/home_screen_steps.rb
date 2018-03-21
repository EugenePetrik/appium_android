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
  puts "Button is #{state}"
end

When(/^I press on Clear button$/) do
  puts "Clear button is pressed"
end

When(/^I type "([^"]*)" to target text field$/) do |target|
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
  text(unit_type)
end

When(/^I press on search icon$/) do
  find_element(id: "action_search").click

  # one more example: find_element(id: "action_bar").find_element(id: "action_search").click
end

When(/^I type "([^"]*)"$/) do |text|
  find_element(id: "search_src_text").send_keys(text)
end

When(/^I press return button on soft keyboard$/) do
  Appium::TouchAction.new.tap(x: 1010.0, y: 1700.0, count: 1).perform
end

Then(/^I see "([^"]*)" as a current unit converter$/) do |current_unit|
  find_element(id: "action_bar").find_element(xpath: "//android.widget.TextView[@text = '#{current_unit}']")
end
