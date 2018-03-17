Then(/^Left Unit picker value should be "([^"]*)"$/) do |value|
  puts "Left Unit picker value is #{value}"
  text(value)
end

Then(/^Right Unit picker value should be "([^"]*)"$/) do |value|
  puts "Right Unit picker value is #{value}"
  text(value)
end

Then(/^Show All button should be (enabled|disabled)$/) do |state|
  puts "Button is #{state}"
end

When(/^I press on Clear button$/) do
  puts "Clear button is pressed"
end

When(/^I type "([^"]*)" to target text field$/) do |target|
  puts "Target is #{target}"
end

Then(/^I should see result as "([^"]*)"$/) do |result|
  puts "Result is #{result}"
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