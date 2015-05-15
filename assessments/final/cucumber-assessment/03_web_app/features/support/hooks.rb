require 'cucumber'
require 'watir-webdriver'

Selenium::WebDriver::Chrome.path = 'C:\Users\Manifest\Documents\GitHub\netjets_atdd_2\assessments\final\cucumber-assessment\03_web_app\chromedriver.exe'
Selenium::WebDriver::IE.path = 'C:\Users\Manifest\Documents\GitHub\netjets_atdd_2\assessments\final\cucumber-assessment\03_web_app\IEDriverServer.exe'

Before do
  begin
    @browser = Watir::Browser.new :ie
  rescue => e
    warn e
  end
end

After do
  @browser.close
end