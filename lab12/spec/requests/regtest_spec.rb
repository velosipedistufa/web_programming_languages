# Generated by Selenium IDE
require 'selenium-webdriver'
require 'json'
describe 'Regtest' do
  before(:each) do
    @driver = Selenium::WebDriver.for :firefox
    @vars = {}
  end
  after(:each) do
    @driver.quit
  end
  it 'regtest' do
    @driver.get('http://localhost:3000')
    @driver.find_element(class: 'button_to').find_element(:xpath, './/*[contains(., "new user")]').click
    @driver.find_element(:id, 'user_username').click
    @driver.find_element(:id, 'user_username').send_keys('somuser')
    @driver.find_element(:id, 'user_email').click
    @driver.find_element(:id, 'user_email').send_keys('somuser@domain.com')
    @driver.find_element(:id, 'user_password').click
    @driver.find_element(:id, 'user_password').send_keys('111111')
    @driver.find_element(:name, 'commit').click
    @driver.find_element(:id, "email").click
    @driver.find_element(:id, 'email').send_keys('somuser@domain.com')
    @driver.find_element(:id, 'password').click
    @driver.find_element(:id, 'password').send_keys('111111')
    @driver.find_element(:name, 'commit').click
    @driver.find_element(:id, 'ch').click
    @driver.find_element(:id, 'ch').send_keys('6')
    @driver.find_element(:name, 'commit').click
    expect(@driver.find_element(:css, 'tr:nth-child(5) > td:nth-child(2)').text).to eq('3')
    @driver.find_element(:xpath, './/*[contains(., "List")]').click
    @driver.find_element(:css, 'button').click
  end
end
