require 'capybara/cucumber'
require 'capybara/poltergeist'


Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app,
    browser: :chrome,
    desired_capabilities: {
      "chromeOptions" => {
        "args" => [ "--start-maximized" ] }
      }
  )
end

Capybara.default_wait_time = 20
Capybara.default_driver = :chrome


# Capybara.app = 'pancard'
# Capybara.default_driver = :poltergeist
# Capybara.register_driver :poltergeist do |app|
#   driver = Capybara::Poltergeist::Driver.new(app, {:js => true, :js_errors => false, :debug => false, port:44678, phantomjs_options:['--proxy-type=none'], timeout:180})
# end



After do |scenario|
  screen_shot_and_save_page(scenario) if scenario.failed?
end

def screen_shot_and_save_page(scenario)
  shot_name = "#{Time.now.strftime('%I-%M-%S-%L-')}" + scenario.title.gsub(' ', '-') + '.png'
  path = "screenshots/" + shot_name
  save_screenshot(path, :full => true)

  require "base64"
  encoded_img = Base64.encode64(IO.read(path))
  embed("data:image/png;base64,#{encoded_img}", 'image/png', "Screenshot")
end