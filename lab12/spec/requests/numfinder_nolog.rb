# Generated by Selenium IDE
require 'selenium-webdriver'
require 'json'
describe 'numfinder_withoutlogin' do
  before(:each) do
    @driver = Selenium::WebDriver.for :firefox
    @vars = {}
  end
  after(:each) do
    @driver.quit
  end
  it 'numfinder_withoutlogin' do
    @driver.get('http://localhost:3000/')
    @driver.find_element(:css, 'body').click
    expect(@driver.find_element(:css, 'p').text).to eq('Not logged in')
    expect(@driver.find_element(:css, 'h1').text).to eq('Sign in')
  end
end
