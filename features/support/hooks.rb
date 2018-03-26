Before do
  $driver.start_driver
end

After do |scenario|
  if scenario.failed?

    FileUtils.mkdir_p("screenshot") unless File.directory?("screenshot")

    screenshot_name = Time.now.strftime("%Y-%m-$d_%H.%M.%S") + ".png"

    screenshot_file = File.join("screenshot", screenshot_name)

    $driver.screenshot(screenshot_file)

    embed("#{screenshot_file}", "image/png")
  end

  $driver.driver_quit
end

AfterConfiguration do
  FileUtils.rm_r("screenshot") if File.directory?("screenshot")
end
