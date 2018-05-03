require 'pry'
require 'appium_lib'

RSpec.configure do |config|
  config.formatter = :documentation
end

def opts
  {
    caps: {
      platformName: "Android",
      deviceName: "emulator-5554",
      app: "/Users/tech-a11/Engr7/sparta_mobile_testing/mobile_testing/budgetwatch.apk"
    }
  }
end
