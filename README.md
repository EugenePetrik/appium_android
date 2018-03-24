**Install gems:**
- **`gem install appium_lib`**
- **`gem install cucumber`**<br /><br />

Devices list - **`adb devices`**

Run all cucumber scenarios - **`cucumber`**<br />

Run cucumber scenario with specific tag - **`cucumber -t @tag_name`**<br />

Check if there is step definitions - **`cucumber --dry-run`**<br /><br />


**Appium commands:**
- **`get_source`** - get page source in XML format<br /><br />
- **`Appium::TouchAction.new.tap(x: #{value}, y: #{value}, count: #{value}).perform`** - click on the element<br /><br />
- **`Appium::TouchAction.new.swipe(start_x: #{value}, start_y: #{value}, offset_x: #{value}, offset_y: #{value}, duration: #{value}).perform`** - scroll the screen<br /><br />
