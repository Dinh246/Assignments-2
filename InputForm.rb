require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
driver.navigate.to 'https://itmscoaching.herokuapp.com/form'
driver.manage.window.resize_to(1024, 768)
name1 = driver.find_element(:id, 'first-name').send_keys('iTMS')
name2 = driver.find_element(:id, 'last-name').send_keys('Coaching')
job = driver.find_element(:id, 'job-title').send_keys('QA')
edu = driver.find_element(:id, 'radio-button-2').click
sex = driver.find_element(:id, 'checkbox-1').click
options = driver.find_element(:id, 'select-menu')
select_option = Selenium::WebDriver::Support::Select.new(options).select_by(:index, 2)
dob = driver.find_element(:id, 'datepicker').send_keys('06/24/1995')
driver.manage.timeouts.implicit_wait = 1
choose_dob = driver.find_element(:xpath, "//td[@class='active day']").click
driver.find_element(:xpath, "//a[@class='btn btn-lg btn-primary']").click
result = driver.find_element(:xpath, "//div[@class='alert alert-success']")
puts result.text
driver.quit