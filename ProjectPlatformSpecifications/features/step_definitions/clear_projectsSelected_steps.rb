require 'pages/login_projectPlatform.rb'
require 'pages/clear_button.rb'

Given(/^Admin is on the project platform main page$/) do
  steps %(
    Given Admin goes on project platform
    When the Admin inserts the valid credentials 
    And hits the sign in button
    Then project platform main page is opened 
  )
end
Given("Admin selects the projects") do
@clear_project = ClearProjects.new(@browser)
@clear_project.check1_element.set(true)
@clear_project.check2_element.set(true)
@clear_project.check3_element.set(true)
sleep(2)
end 
When("Admin clicks the clear Selection button") do
@clear_project.clearproject
end
Then("the projects must be deselected") do
     expect(@clear_project.deselected).to eq("0")
     @browser.close
end