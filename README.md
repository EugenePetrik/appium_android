**Install gems:**
- **`gem install appium_lib`**
- **`gem install cucumber`**<br /><br />

Devices list - **`adb devices`**

Run all cucumber scenarios - **`cucumber`**<br />

Run cucumber scenario with specific tag - **`cucumber -t @tag_name`**<br />

Run cucumber scenarios that has first OR second tag - **`cucumber -t '@tag_name1 or @tag_name2'`**<br />

Run cucumber scenarios that has first AND second tags - **`cucumber -t @tag_name1 -t @tag_name2`**<br />

Run cucumber scenarios using profile - **`cucumber -p profile_name`**

Check if there is step definitions - **`cucumber --dry-run`**

Add reports - **`cucumber --format html --out report.html`**

Add reports in terminal and file - **`cucumber --format html --out report.html --format pretty`**<br /><br />


**Appium commands:**
- **`get_source`** - get page source in XML format<br /><br />
- **`Appium::TouchAction.new.tap(x: #{value}, y: #{value}, count: #{value}).perform`** - click on the element<br /><br />
- **`Appium::TouchAction.new.swipe(start_x: #{value}, start_y: #{value}, offset_x: #{value}, offset_y: #{value}, duration: #{value}).perform`** - scroll the screen<br /><br />
