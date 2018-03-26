require "appium_lib"
require "pry"

def caps
  {
      caps: {
          deviceName: "Anyname",
          platformName: "Android",
          app: (File.join(File.dirname(__FILE__), "PreciseUnitConversion.apk")),
          appPackage: "com.ba.universalconverter",
          appActivity: "MainConverterActivity",
          newCommandTimeout: "3600"
      }
  }
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object

def find_in_list(value)
  # 0.5 -> 50%, 0.2 -> 20%, scroll up
  3.times { Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.2, offset_x: 0.5, offset_y: 0.8, duration: 600).perform }

  current_screen = get_source
  previous_screen = ""

  until (exists{ text(value) }) || (current_screen == previous_screen) do
    # 0.5 -> 50%, 0.8 -> 20%, scroll down
    Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.8, offset_x: 0.5, offset_y: 0.2, duration: 600).perform
    previous_screen = current_screen
    current_screen = get_source
  end

  if exists{ text(value) }
    text(value).click
  else
    fail("Cannot find element with text #{value}")
  end
end
