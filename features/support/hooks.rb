#Cucumber provides a number of hooks which allow us to run blocks at various points in the Cucumber test cycle

Before do
  # Do something before each scenario.
end

Before do |scenario|
  # The +scenario+ argument is optional, but if you use it, you can get the title,
  # description, or name (title + description) of the scenario that is about to be
  # executed.
end

After do
  # Do something after each scenario.
end

After do |scenario|
  # Do something after each scenario.
  # The +scenario+ argument is optional, but
  # if you use it, you can inspect status with
  # the #failed?, #passed? and #exception methods.

  if(scenario.failed?)
    # uncomment next line to save screenshot to a file
    # page.driver.browser.save_screenshot("html-report/#{scenario.__id__}.png")

    encoded_img = page.driver.browser.screenshot_as(:base64)
    embed("data:image/png;base64,#{encoded_img}",'image/png')
  end
end

#Tagged hooks

Before('@Ex_tag1, @Ex_tag2') do
  # This will only run before scenarios tagged
  # with @cucumis OR @sativus.
end

AfterStep('@Ex_tag1, @Ex_tag2') do
  # This will only run after steps within scenarios tagged
  # with @cucumis AND @sativus.
end