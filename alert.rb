require 'selenium-webdriver'
require 'rubygems'
browser = Selenium::WebDriver.for :chrome
browser.navigate.to 'https://www.seleniumeasy.com/test/javascript-alert-box-demo.html'
alert = browser.find_element(xpath: "//button[@class='btn btn-default']").click
alert = browser.switch_to.alert.accept
confirm = browser.find_element(xpath: "//button[@class='btn btn-default btn-lg'][contains(text(),'Click me!')]").click
confirm = browser.switch_to.alert.dismiss
alert_prompt = browser.find_element(xpath: "//button[contains(text(),'Click for Prompt Box')]").click
alert_prompt = browser.switch_to.alert
alert_prompt.send_keys('Dinh dep trai')
alert_prompt.accept
sleep 5
browser.quit