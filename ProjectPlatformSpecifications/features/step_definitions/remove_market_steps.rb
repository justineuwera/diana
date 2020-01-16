require 'pages/login_projectPlatform.rb'
require 'pages/remove_market.rb'

Given(/^Admin is on the project platform$/) do
  steps %(
    Given Admin goes on project platform
    When the Admin inserts the valid credentials 
    And hits the sign in button
    Then project platform main page is opened 
  )
end
Given("Admin click on one project") do
@remov_market = RemoveMarket.new(@browser)
@remov_market.project_element.click
sleep(2)
end 
When("Admin clicks the remove button") do
@name = @remov_market.removing_element.text
@remov_market.removeM
@browser.alert.ok
end
Then("the market must be removed from project") do
@message = @remov_market.notice_element.text
@expected_message = 'The market "' + @name + '" has been successfully removed from its project.'
expect(@message).to eq(@expected_message)
end