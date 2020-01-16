require 'pages/csv_extraction_page.rb'
require 'pages/databucket_login.rb'

Given(/^Admin is on the databucket platform main page$/) do
  steps %(
    Given admin opens Databucket login page
    When admin enters valid credentials
    And admin clicks on sign in button 
    Then admin is logged in databucketPlatform 
  )
end
Given("Admin clicks on databucket") do
  @csv_extract = ExtractionCsv.new(@browser)
  @csv_extract.databucket_element.click
  @csv_extract.bucket_element.click
  @csv_extract.submit
  sleep(1)
end
When("Admin clicks on csv button") do
@csv_extract.extraction
@csv_extract.tocsv_element.click
sleep(1)
end
And("Admin click on extract split csv button/ extract unified csv button")do
@csv_extract.csv1
sleep(2)
end
And("Admin clicks on the new csv created")do
sleep(2)
end
Then("the new csv is extracted")do 
end