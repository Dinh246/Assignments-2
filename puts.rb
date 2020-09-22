require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
driver.navigate.to "https://www.google.com/"
driver.manage.window.resize_to(1024, 768)
puts driver.title
puts driver.current_url
sleep 5
puts driver.page_source
search_bar = driver.find_element(name: 'q').send_keys('iTMS Coaching')
driver.manage.timeouts.implicit_wait = 1
driver.find_element(:xpath, "//span[contains(text(),'itms coaching')]").click
puts driver.title
driver.quit