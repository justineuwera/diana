require 'pages/login_surveyPlatform_page.rb' 
require 'pages/create_databucket.rb'
require 'pages/databucket_login.rb'

Given(/^Admin is on the survey platform$/) do
  steps %(
    Given Admin goes on Survey Platform
    When Admin inserts the valid credential  
    And Clicks the sign in button
    Then survey platform main page is opened 
  )
end
Given("Admin selects one or more surveys") do
  @create_databucket = CreateBucket.new(@browser)
  @create_databucket.check1_element.set(true)
  @create_databucket.check2_element.set(true)
  @create_databucket.check3_element.set(true)
  sleep(1)
end
When("Admin clicks the create databucket button") do
@create_databucket.createnewdatabucket
steps %(
  Given admin opens Databucket login page
    When admin enters valid credentials
    And admin clicks on sign in button 
    Then admin is logged in DatabucketPlatform
  )
sleep(1)
end
And("Admin inserts title")do
@title = SecureRandom.alphanumeric(2)
@browser.text_field(id: 'data_bucket_title').set("AutomationDatabucket_"+@title)
sleep(2)
end
And("Admin click on the next button")do
@create_databucket.submit
sleep(2)
end
And("Admin click on save selection button")do
@create_databucket.surveyselection
sleep(2)
end
Then("databucket is created")do
expect(@create_databucket.databucketcreated).to eq('DataBucket successfully saved.')  
end