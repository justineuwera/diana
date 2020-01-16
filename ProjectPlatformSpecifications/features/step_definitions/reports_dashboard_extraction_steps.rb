require 'pages/report_extraction_page.rb'
require 'pages/databucket_login.rb'

Given(/^Admin is on the databucket platform$/) do
  steps %(
    Given admin opens Databucket login page
    When admin enters valid credentials
    And admin clicks on sign in button 
    Then admin is logged in databucketPlatform 
  )
end
Given("Admin clicks on the databucket") do
  @report_extract = ExtractionReport.new(@browser)
  @report_extract.databucket_element.click
  @report_extract.bucket_element.click
  @report_extract.submit
  sleep(1)
end
When("Admin click on to Report Dashboard button") do
@report_extract.extraction
@report_extract.toreport_element.click
sleep(1)
end
And("Admin click on new reportdashboard extraction button")do
@report_extract.reportexctraction
sleep(2)
end
And("Admin fills the title and description fields")do
@description = SecureRandom.alphanumeric(2)
@browser.text_field(name: 'extraction[description]').set("Extract_Automation"+@description)
sleep(2)
end
And("Admin click on create reportdashboard extraction button")do
@report_extract.newreport
sleep(2)
end
Then("the new report is created")do 
end