require 'selenium-webdriver'
require 'rubygems'
browser = Selenium::WebDriver.for :chrome
browser.navigate.to "http://www.practiceselenium.com/check-out.html"
options = browser.find_element(:id, 'card_type')
select_object = Selenium::WebDriver::Support::Select.new(options).select_by(:text, 'Visa')
sleep 5
browser.quit