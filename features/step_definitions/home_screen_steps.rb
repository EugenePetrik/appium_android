Then(/^Left Unit picker value should be "([^"]*)"$/) do |value|
  puts "Left Unit picker value is #{value}"
end

Then(/^Right Unit picker value should be "([^"]*)"$/) do |value|
  puts "Right Unit picker value is #{value}"
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