require 'pages/login_projectPlatform.rb' 
require 'pages/create_supermaster.rb'

Given(/^Admin is on the project platform page$/) do
  steps %(
    Given Admin goes on project platform
    When the Admin inserts the valid credentials 
    And hits the sign in button
    Then project platform main page is opened 
  )
end
Given("Admin select one or more projects") do
  @create_supermaster = CreateSupermaster.new(@browser)
  @create_supermaster.check1_element.set(true)
  @create_supermaster.check2_element.set(true)
  @create_supermaster.check3_element.set(true)
  sleep(1)
end
When("Admin clicks on create supermaster button") do
 @create_supermaster.createsupermaster
  sleep(1)
end
Then("project is opened with the new supermaster") do
 @create_supermaster.supermaster_element.wait_until(&:present?)
 @browser.close
end