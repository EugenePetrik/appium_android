**Install gems:**
- **`gem install appium_lib`**
- **`gem install cucumber`**
- **`gem install pry`**<br />

**Cucumber:**

Run all cucumber scenarios - **`cucumber`**

Run cucumber scenario with specific tag - **`cucumber -t @tag_name`**

Check if there is step definitions - **`cucumber --dry-run`**

Run cucumber scenarios that has first OR second tag - **`cucumber -t '@tag_name1 or @tag_name2'`**

Run cucumber scenarios that has first AND second tags - **`cucumber -t @tag_name1 -t @tag_name2`**

Run cucumber scenarios using profile - **`cucumber -p profile_name`**

Add reports - **`cucumber --format html --out report.html`**

Add reports in terminal and file - **`cucumber --format html --out report.html --format pretty`**<br />


**Appium commands:**
- **`get_source`** - get page source in XML format<br /><br />
- **`Appium::TouchAction.new.tap(x: #{value}, y: #{value}, count: #{value}).perform`** - click on the element<br /><br />
- **`Appium::TouchAction.new.swipe(start_x: #{value}, start_y: #{value}, offset_x: #{value}, offset_y: #{value}, duration: #{value}).perform`** - scroll the screen<br /><br />


Devices list - **`adb devices`**

All installed app on device - **`adb shell pm list packages`**

Path to apk file - **`adb shell pm path com.android.#{app_name}`**

Download app to local machine - **`adb pull pm #{path_to_apk_file}`**

App Package Name & App Activity (open app) - **`adb shell dumpsys window windows | grep -E 'mCurrentFocus|mFocusedApp'`**
