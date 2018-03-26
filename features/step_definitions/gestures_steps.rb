When(/^I swipe from left to right$/) do
  Appium::TouchAction.new.swipe(start_x: 0.01, start_y: 0.5, offset_x: 0.8, offset_y: 0.5, duration: 600).perform
end

When(/^I swipe from right to left$/) do
  Appium::TouchAction.new.swipe(start_x: 0.99, start_y: 0.5, offset_x: 0.01, offset_y: 0.5, duration: 600).perform
end
